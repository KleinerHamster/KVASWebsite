import unittest
import re

def check_phone(phone):#finction of check phone
    compil=re.compile(r'(\+7)(\([0-9]{3}\)\s([0-9]{3}))(-[0-9]{2})(-[0-9]{2})$', re.X)
    result=compil.search(phone)
    if result:
        return 1
    else:
        return 0

class Test_test_חנשעף(unittest.TestCase):
    def test_valid_phone_check(self):
        list_mail_cor=["+7(922) 187-25-90","+7(819) 354-29-88", "+7(123) 456-123-98", "+7(921) 345-56-87", "+7(919) 354-123-65"]
        for i in list_mail_cor:
            self.assertTrue(check_phone(i))

    def test_invalid_phone_check(self):
        list_mail_cor=["+7(919) 186-25-900","+7(922) 175-25--90", "+7(922) 237-25-9", "+7(812) 187-25-", "+7(723) 167-2590",
                       "+7(922) 195-2-90","+7(982) 187-250", "+7(922) 187--90", "+7(812) 187-25-", "+7(921) 187--24",
                       "+7(922) 187--24--","+7(922) 19-25-90", "+7(392) 1-25-90", "+7(922) 1965-25-90-", "+7(392) -25-90",
                       "+7(922) --25-90","+7(392) 234", "+7(812) 187--", "+7(7236) 167-25-90", "+7(92) 195-29-90",
                       "+7() 165-29-00","8(812) 187-25-6","+7(723)167-2590","+7{922} 195-25-90", "8() 165-290","(922) 123-78-98"]
        for i in list_mail_cor:
            self.assertFalse(check_phone(i))

if __name__ == '__main__':
    unittest.main()