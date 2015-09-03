# Cloud Formation Code Generator

## requirements

* inflection
* pystache
* scrapy
* urlparse

## to run

```bash
scrapy crawl aws-cf
```

## generated files

json and ruby files will be generated in the output directory

## offline mode

If you are going to modify the scraper multiple times, use the offline caching capability in scrapy in order to avoid excessive network traffic.

```bash
cp cf_docs_scraper/settings.py cf_docs_scraper/settings.py.orig
cp cf_docs_scraper/settings.py.offline cf_docs_scraper/settings.py
```
