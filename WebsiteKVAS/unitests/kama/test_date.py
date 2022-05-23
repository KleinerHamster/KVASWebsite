import unittest
import module1

class Test_test_date(unittest.TestCase):
    def test_A(self):
        mail=["31-04-2021", "11-34-3088", "12-09-2009", "2020-13-05",  "o201-01-01", "2011.13.01", "2012.10.10", "2020,02,10", "1888-12-11", "3000-11-01", "2023-23-05"]
        for i in mail:
            self.assertFalse(module1.check(i))

if __name__ == '__main__':
    unittest.main()
