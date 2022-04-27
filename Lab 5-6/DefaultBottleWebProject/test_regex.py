import unittest
import myform 


class Test_test_1(unittest.TestCase):
    
    def test_correct_mail(self):
        text = ['example@mail.com','test12_12.222@mail.ru','example@example.com','example@example.com1', 'example@examp1e.com', 'example-meme_meme111not+mem@sec0ndd0main.mail.co.uk']
        for p in text:
            self.assertTrue(myform.isEmail(p));
        
    def test_fail_mail(self):
        text = ['example@examplecom','exa-!mple@example.com', 'exampleAexample.com',' example@example.com', 'example@example.com ','example@.com' ,'@example.com','example@example.','example@mail..com']
        for p in text:
            self.assertFalse(myform.isEmail(p));

if __name__ == '__main__':
    unittest.main()
