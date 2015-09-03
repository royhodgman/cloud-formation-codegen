# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import codecs
import json
import os
import pystache

class CfDocsScraperPipeline(object):

    output_dir_name = "output"
    data_dir_name = "{}/data".format( output_dir_name )
    ruby_dir_name = "{}/ruby".format( output_dir_name )
        
    with codecs.open( "cf_docs_scraper/spiders/ruby-class.mustache", "r", "utf-8" ) as template_file:
        template_source = template_file.read()
        template_parsed = pystache.parse( template_source )
        renderer = pystache.Renderer()
    
    def process_item(self, item, spider):

        # create the data directory if it doesn't already exist
        if( not os.path.exists ( self.data_dir_name ) ):
            os.makedirs( self.data_dir_name )
        
        output_file_name = "{}/{}.json".format( self.data_dir_name,
                                                item[ "resource_name" ] )

        print "writing out to: {}".format( output_file_name )

        # write out the item as json
        with open( output_file_name, "wb" ) as output_file:
            json.dump( dict(item), output_file )

        # also, render the ruby class

        # create the ruby directory if it doesn't already exist
        if( not os.path.exists ( self.ruby_dir_name ) ):
            os.makedirs( self.ruby_dir_name )
            
        ruby_file_name = "{}/{}.json".format( self.ruby_dir_name,
                                              item[ "resource_name" ] )

        with open( ruby_file_name, "wb" ) as ruby_file:
            ruby_file.write( self.renderer.render( self.template_parsed, dict(item) ) )
