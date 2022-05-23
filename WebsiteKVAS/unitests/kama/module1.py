import re 
import pdb
import json
date=r'(19[9][0-9]|20[01][0-9]|20[2][0-2])-(0?[1-9]|1[0-2])-(0?[1-9]|[12][0-9]|3[01])'
def check(mail):
    if (re.fullmatch(date, mail)):
        return True
    else:
        return False


