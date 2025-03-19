import unittest
import cal

class TestCalculator(unittest.TestCase):

    def test_square_root(self):
        self.assertAlmostEqual(cal.square_root(16), 3.0)   
        self.assertAlmostEqual(cal.square_root(25), 5.0)   
        self.assertAlmostEqual(cal.square_root(4), 2.0)    
        self.assertAlmostEqual(cal.square_root(9), 3.0)    

    def test_factorial(self):
        self.assertEqual(cal.factorial(0), 1)     
        self.assertEqual(cal.factorial(1), 1)     
        self.assertEqual(cal.factorial(5), 120)   
        self.assertEqual(cal.factorial(6), 720)   

    def test_natural_log(self):
        self.assertAlmostEqual(cal.natural_log(1), 0.0)          
        self.assertAlmostEqual(cal.natural_log(2), 0.6931471806) 
        self.assertAlmostEqual(cal.natural_log(3), 1.0986122886) 
        self.assertAlmostEqual(cal.natural_log(5), 1.6094379124) 

    def test_power(self):
        self.assertAlmostEqual(cal.power(2, 3), 8.0)     
        self.assertAlmostEqual(cal.power(4, 2), 16.0)    
        self.assertAlmostEqual(cal.power(5, 2), 25.0)    
        self.assertAlmostEqual(cal.power(4, 3), 64.0)    

if __name__ == '__main__':
    unittest.main()
