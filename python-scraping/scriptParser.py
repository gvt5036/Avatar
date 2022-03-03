# 2021-03-06 ebb: This script is for parsing the bad old HTML in the lyrics files we scraped, to see if we can write
# just the text of the lyrics out into new files.
# The XPaths we want to retrieve are:
#   (//table[@border="0"]//string())[1],
#     //table[@border="0"]/following::text()[not(parent::b)][not(parent::font[@size="-1"])]
#
import os
import bs4
from bs4 import BeautifulSoup
import requests
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
            soup = BeautifulSoup(content, 'html.parser')
            script = soup.find('table', { "class" : "wikitable"})
            # print(script)

            newfile = open(filename, "w", encoding = 'utf-8')
            # scriptContents = '\n'.join(script)
            # print(scriptContents)
            newfile.write(str(script))
            newfile.close()
    except:
        continue
