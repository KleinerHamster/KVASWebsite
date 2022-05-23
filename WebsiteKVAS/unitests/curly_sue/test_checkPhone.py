import unittest
import check_phone 
import re 

class CheckPhoneTest(unittest.TestCase):

    def test_correct_phone_numbers(self):
        phone=["+7(943) 435-34-34",
               "+7(923) 295-54-24",
               "+7(976) 314-14-63",
               "+7(129) 349-09-92",
               "+7(143) 489-24-24",
               "+7(789) 238-32-23"]

        for i in range(len(phone)):
            self.assertTrue(check_phone.check_phone(phone[i]))

    def test_invalid_phone_numbers(self):
        phone=["1","8-902-902-03-23","+7 943 434 43 93", "987-90-90", "+7 (678) 890-90-09",
               "some word","+7 (987) op-23-23", "44-8980-00-90", "+794323349804", "+7(433) 23-23-23",
               "+7(324) 234-23-0", "+7(439) 4394-34-34", "+7(439) 349-34-342", "7(435) 434-43-34",
               "+7(355) 324--32-23", "+7(954) -345-34-43", "+7(439) 353-43--34", "+7(976) 314-14-63-",
               "+7(930) 435-34-", "+7(053) -24-24", "+7(789) 238-23", "(567) 684-43-34", "+7() 578-54-54"]

        for i in range(len(phone)):
            self.assertFalse(check_phone.check_phone(phone[i]))

if __name__ == '__main__':
    unittest.main()

