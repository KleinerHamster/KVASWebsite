import re

def check_email(mail):
    compil=re.compile(r'^[a-zA-Z0-9]+[\._]?[a-zA-Z0-9._]+[@]\w+[.]\w{2,3}$', re.X)#������� ���������� ���������
    result=compil.search(mail)#��������� ��������� �����
    if result:#���� ����� ������
        return 1
    else:
        return 0