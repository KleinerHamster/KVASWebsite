import re

def check_email(mail):
    compil=re.compile(r'^[a-zA-Z0-9]+[\._]?[a-zA-Z0-9._]+[@]\w+[.]\w{2,3}$', re.X)#создаем регулярное выражение
    result=compil.search(mail)#проверяем введенную почту
    if result:#если почта верная
        return 1
    else:
        return 0