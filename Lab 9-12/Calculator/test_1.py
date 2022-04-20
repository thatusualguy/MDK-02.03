import unittest

import sys
sys.path.append("C:/Users/max/source/repos/WebAlps/Lab 9-12/Calculator/")
import Calc

class Test_test_1(unittest.TestCase):
    def test_add(self):
        self.assertEqual(Calc.add(1, 2), 3)
    def test_sub(self):
        self.assertEqual(Calc.sub(4, 2), 2)
        
    def test_mul(self):
        self.assertEqual(Calc.mul(2, 5), 10)
        
    def test_div(self):
        self.assertEqual(Calc.div(8, 4), 2)
      

if __name__ == '__main__':
    unittest.main()
