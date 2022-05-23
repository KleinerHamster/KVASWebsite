import unittest
import module1
class Test_test_true_date(unittest.TestCase):
    def test_A(self):
        date=["2022-05-23", "2011-12-31", "1990-03-04", "2003-08-01",  "2022-1-2"]
        for i in date:
            self.assertTrue(module1.check(i))

if __name__ == '__main__':
    unittest.main()
