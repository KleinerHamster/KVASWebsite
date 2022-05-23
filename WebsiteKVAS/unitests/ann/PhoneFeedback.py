import re 

regex = re.compile(r'(\+7)((\()\d{3}(\)))(\s)(\d{3})(\-)(\d{2})(\-)(\d{2})')

def getPhone(_phone):
    
    if re.fullmatch(regex, _phone):
        return True
    else:
        return False
