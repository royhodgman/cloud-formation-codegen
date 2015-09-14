# Cloud Formation Code Generator

## requirements

* inflection
* pystache
* scrapy

## to run

```bash
scrapy crawl aws-cf
```

### problems with osx

Scrapy and OS X [have](http://stackoverflow.com/questions/30964836/scrapy-throws-importerror-cannot-import-name-xmlrpc-client) [issues](https://github.com/major/supernova/issues/55) when it comes to the [six package](http://pythonhosted.org/six/), namely the error seen in [issue #1](https://github.com/royhodgman/cloud-formation-codegen/issues/1):

```bash
~/code/cloud-formation-codegen[master*]% scrapy crawl aws-cf                           
Traceback (most recent call last):
  File "/usr/local/bin/scrapy", line 7, in <module>
    from scrapy.cmdline import execute
  File "/Library/Python/2.7/site-packages/scrapy/__init__.py", line 48, in <module>
    from scrapy.spiders import Spider
  File "/Library/Python/2.7/site-packages/scrapy/spiders/__init__.py", line 10, in <module>
    from scrapy.http import Request
  File "/Library/Python/2.7/site-packages/scrapy/http/__init__.py", line 12, in <module>
    from scrapy.http.request.rpc import XmlRpcRequest
  File "/Library/Python/2.7/site-packages/scrapy/http/request/rpc.py", line 7, in <module>
    from six.moves import xmlrpc_client as xmlrpclib
ImportError: cannot import name xmlrpc_client
```

To avoid this problem, use [virtualenv](https://virtualenv.pypa.io/):

```bash
VIRTUAL_ENV_DIR=<PATH_TO_VIRTUAL_ENV_DIR_TO_BE_CREATED>
virtualenv $VIRTUAL_ENV_DIR
git clone https://github.com/royhodgman/cloud-formation-codegen.git
cd cloud-formation-codegen
source $VIRTUAL_ENV_DIR/bin/activate
pip install -r requirements.txt
$VIRTUAL_ENV_DIR/bin/scrapy crawl aws-cf
```

## generated files

json and ruby files will be generated in the output directory

## offline mode

If you are going to modify the scraper multiple times, use the offline caching capability in scrapy in order to avoid excessive network traffic.

```bash
cp cf_docs_scraper/settings.py cf_docs_scraper/settings.py.orig
cp cf_docs_scraper/settings.py.offline cf_docs_scraper/settings.py
```
