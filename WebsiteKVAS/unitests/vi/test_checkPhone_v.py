import unittest
import re

def check_phone(phone):#finction of check phone
    compil=re.compile(r'(\+7)(\([0-9]{3}\)\s([0-9]{3}))(-[0-9]{2})(-[0-9]{2})$', re.X)#создаем регулярное выражение
    result=compil.search(phone)#проверяем введенную почту
    if result:#если почта верная
        return 1
    else:
        return 0

class TestStringMethods(unittest.TestCase):
    def test_valid_email_check(self):
        list_mail_cor=["+7(922) 187-25-90","+7(922) 187-66-88"]
        for i in list_mail_cor:
            self.assertEqual(check_phone(i), 1)

if __name__ == '__main__':
    unittest.main()
