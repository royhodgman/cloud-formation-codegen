# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class CfDocsScraperItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass

class CloudFormationObjectDataItem(scrapy.Item):
    url = scrapy.Field()
    topic_title = scrapy.Field()
    resource_name = scrapy.Field()
    mixins = scrapy.Field()
    variables = scrapy.Field()
    list_variables = scrapy.Field()
    ruby_comment_name = scrapy.Field()
    ruby_class_name = scrapy.Field()
    ruby_class_name_underscore = scrapy.Field()
