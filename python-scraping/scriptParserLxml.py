import os
import bs4
# ebb: be sure to do pip install lxml (on mac os)
import lxml
from lxml import html
from lxml import etree
from copy import deepcopy

import io
from io import StringIO, BytesIO
import glob

path = 'avatarTranscripts'
scriptDir = os.listdir(path)
# print(scriptDir)

for filenames in scriptDir:
    try:
         with open(os.path.join(path, filenames), encoding="utf8", errors='ignore') as file:
            filerename = file.name.split(':')[1] + ".xml"
            # print(filerename)
            filename = 'avTrans/' + filerename
            # print(filename)
            content = file.read()
            file.close()
            parser = etree.HTMLParser()
            tree = etree.parse(StringIO(content), parser)
            rootParse = etree.tostring(tree.getroot(), pretty_print=True, method="html")
            # print(rootParse)
            stringRoot = str(rootParse, 'UTF-8')
            parsedRoot = etree.parse(StringIO(stringRoot), parser)
            script = tree.xpath('//table[@class="wikitable"]')
            print(script)
            # deepScript = script.append(deepcopy(script))
            #print(script)
# Try iter: need to be iterating through this list of elements and generating a node tree for the output
# Read: https://docs.python.org/3/library/xml.etree.elementtree.html but this is xml.etree.ElementTree
# From LXML Etree tutorial see: https://lxml.de/tutorial.html#tree-iteration
# Also read XPath and XSLT with lxml: https://lxml.de/xpathxslt.html
            # newfile = open(filename, "w")
            # contents=script
            # print(contents)
            # newfile.write(contents)
            # newfile.close()

    except:
        continue
