import unittest
import module1

class Test_test_date(unittest.TestCase):
    def test_A(self):
        mail=["29-04-2020", "34-3088", "12-09-2009"]
        for i in mail:
            self.assertTrue(module1.check(i))

if __name__ == '__main__':
    unittest.main()
