import unittest
import checkPhone

class Test_test_phone(unittest.TestCase):
    def test_valid_phone_check(self):#test of correct phone muber
        #array of correct phone
        list_mail_cor=["+7(922) 187-25-90","+7(819) 354-29-88", "+7(123) 456-12-98", "+7(921) 345-56-87", "+7(919) 354-12-65"]
        for i in list_mail_cor:
            self.assertTrue(checkPhone.check_phone(i))

    def test_invalid_phone_check(self):#test of incorrect phone muber
        #array of incorrect phone
        list_mail_cor=["+7(919) 186-25-900","+7(922) 175-25--90", "+7(922) 237-25-9", "+7(812) 187-25-", "+7(723) 167-2590",
                       "+7(922) 195-2-90","+7(982) 187-250", "+7(922) 187--90", "+7(812) 187-25-", "+7(921) 187--24",
                       "+7(922) 187--24--","+7(922) 19-25-90", "+7(392) 1-25-90", "+7(922) 1965-25-90-", "+7(392) -25-90",
                       "+7(922) --25-90","+7(392) 234", "+7(812) 187--", "+7(7236) 167-25-90", "+7(92) 195-29-90",
                       "+7() 165-29-00","8(812) 187-25-6","+7(723)167-2590","+7{922} 195-25-90", "8() 165-290","(922) 123-78-98"]
        for i in list_mail_cor:
            self.assertFalse(checkPhone.check_phone(i))

if __name__ == '__main__':
    unittest.main()