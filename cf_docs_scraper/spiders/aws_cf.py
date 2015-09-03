# -*- coding: utf-8 -*-
import inflection
import re
import scrapy
import urlparse
import sys

from cf_docs_scraper.items import CloudFormationObjectDataItem

from scrapy.selector import Selector
from scrapy.utils.markup import remove_tags
from scrapy.utils.response import get_base_url

class AwsCfSpider(scrapy.Spider):
    name = "aws-cf"
    allowed_domains = ["docs.aws.amazon.com"]
    start_urls = [
        'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html',
        'http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-product-property-reference.html'
    ]

    def parse(self, response):

        base_url = get_base_url( response )
        
        for href in response.css("div.highlights > ul > li > a::attr('href')").extract():
            url = urlparse.urljoin( base_url, href )
            yield scrapy.Request(url, callback=self.parse_topic)

    def parse_topic(self, response):

        data = CloudFormationObjectDataItem()

        # save the url
        data[ 'url' ] = response.request.url

        # get the tile of this resource
        resource_type = response.xpath("//h1[@class='topictitle']/text()").extract()
        data[ 'topic_title' ] = resource_type[0]

        # clean up the resource name
        resource_name = unicode(data[ 'topic_title' ])
        resource_name = resource_name.replace( '\n', ' ' )
        resource_name = resource_name.replace( '::', ' ' )
        resource_name = resource_name.replace( u'\xa0', ' ' ) #&nbsp
        resource_name = re.sub( " +", " ", resource_name )
        resource_name = resource_name.replace( ' ', '_' )
        data[ 'resource_name' ] = resource_name

        data[ 'ruby_comment_name' ] = resource_name.replace( '-', "::" )
        data[ 'ruby_class_name' ] = "".join( resource_name.split( "_" )[1:])
        data[ 'ruby_class_name_underscore' ] = "_".join( resource_name.lower().split( "_" )[1:])
        
        data[ 'variables' ] = []
        data[ 'list_variables' ] = []
        
        mixins = set()
        
        # iterate over the lists of variables
        variablelists = response.xpath("//div[@class='variablelist']/dl")

        for variablelist in variablelists:

            variable_titles = variablelist.xpath( "dt" )
            variable_descriptions = variablelist.xpath( "dd" )
            
            if( len( variable_titles ) == len( variable_descriptions ) ):

                # iterate over the variables in this list
                for i in range( len( variable_titles ) ):
                    variable_data = {}

                    variable_name = remove_tags( variable_titles[ i ].xpath( "span" ).extract()[ 0 ] )
                    variable_name = variable_name.replace( u'\xa0', ' ' ) #&nbsp
                    
                    variable_data[ "name" ] = variable_name
                    variable_data[ "name_underscore" ] = inflection.underscore( variable_name )
    
                    paragraphs = variable_descriptions[ i ].xpath("p").extract()
                    for paragraph in paragraphs:
                        clean_paragraph = remove_tags( paragraph )
                        
                        if( clean_paragraph.startswith( "Type:" ) ):
                            variable_type = clean_paragraph.replace( "Type:", "", 1 ).strip()
                            variable_data[ "type" ] =  variable_type
                        elif( clean_paragraph.startswith( "Type" ) ):
                            variable_type = clean_paragraph.replace( "Type", "", 1 ).strip()
                            variable_data[ "type" ] =  variable_type
                        elif( clean_paragraph.startswith( "Required:" ) ):
                            variable_required = clean_paragraph.replace( "Required:", "", 1 ).strip()
                            variable_data[ "required" ] =  variable_required
                        elif( clean_paragraph.startswith( "Required" ) ):
                            variable_required = clean_paragraph.replace( "Required", "", 1 ).strip()
                            variable_data[ "required" ] =  variable_required

                    # if there is no type or no variable data, set some defaults
                    if "type" not in variable_data:
                        variable_data[ "type" ] = "String"

                    if "required" not in variable_data:
                        variable_data[ "required" ] = "No"

                    ## TODO: keep track of entires without a type or required element
                        
                    # is it tags?
                    if( variable_data[ "name" ] == "Tags" ):
                        mixins.add( "Taggable" )
                            
                    # is it a list?
                    lower_type = variable_data[ "type" ].lower()
                    if( lower_type.startswith( "list of " ) or
                        lower_type.startswith( "a list of " ) or
                        lower_type.endswith( " list" ) ):

                        data[ "list_variables" ].append( variable_data )
                    else:
                        data[ "variables" ].append( variable_data )

        # clean up the list of mixins
        data[ 'mixins' ] = list( mixins )
        
        yield data
