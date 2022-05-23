import re

regex=re.compile(r'(\+7)(\([0-9]{3}\)\s([0-9]{3}))(-[0-9]{2})(-[0-9]{2})$')

def check_phone(phone):
    
    if re.fullmatch(regex, phone):
        return True
    else:
        return False
