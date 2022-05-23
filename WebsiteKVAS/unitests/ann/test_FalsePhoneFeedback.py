import unittest
import PhoneFeedback #compare function
import re 

class PhoneTest(unittest.TestCase):
    #function with testing values
    def test_FalseList(self):
        list_phone_cor = ["+7(91) 911-59-65"
                          , "8(911) 848-59-94"
                          , "+7911 848-61-94"
                          , "+7(765)6574-59-94"
                          , "+7(911)84859-94"
                          , "+7(967)942-5571"
                          , "+7(911) 84859-94"
                          , "+7(911)8485994"
                          , "+7(911) 848-6291"
                          , "+7(911) 8485994"
                          , "+79118485994"
                          , "+7 911 848 59 94"
                          , "+7 911 653-59-82"
                          , "+7(911) 848-59"
                          , "+7(91) 547-59-94"
                          , "(911) 848-59-94"]
        #input testing values in compare function
        for i in range(len(list_phone_cor)):
            self.assertFalse(PhoneFeedback.getPhone(list_phone_cor[i]))

if __name__ == '__main__':
    unittest.main()
