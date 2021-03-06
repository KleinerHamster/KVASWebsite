import unittest
import PhoneFeedback #compare function
import re 

class PhoneTest(unittest.TestCase):

    #function with testing values
    def test_TrueList(self):
        list_phone_cor = ["+7(911) 848-59-94"
                          , "+7(981) 739-01-94"
                          , "+7(341) 450-01-87"
                          , "+7(823) 752-11-11"
                          , "+7(111) 000-00-00"]
        #sending testing values in compare funcion
        for i in range(len(list_phone_cor)):
            self.assertTrue(PhoneFeedback.getPhone(list_phone_cor[i]))

if __name__ == '__main__':
    unittest.main()

