import re

def check_phone(phone):#finction of check phone
    compil=re.compile(r'(\+7)(\([0-9]{3}\)\s([0-9]{3}))(-[0-9]{2})(-[0-9]{2})$', re.X)#������� ���������� ���������
    result=compil.search(phone)#��������� ��������� �����
    if result:#���� ����� ������
        return 1
    else:
        return 0