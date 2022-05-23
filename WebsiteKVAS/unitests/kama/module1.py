import re 
import pdb
import json
date=r'(?<!\d)(?:0?[1-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[01][0-9])(?!\d)'
def check(mail):
    if (re.fullmatch(date, mail)): #fullmatch  - полностью вся входящая строка (findall, sub, finditer, etc.)
        return True
    else:
        return False
