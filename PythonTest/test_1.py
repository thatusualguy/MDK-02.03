import unittest
import re

class Test_test_1(unittest.TestCase):
    
    def test_correct_mail(self):
        regex = r'^[a-z0-9._+\-]+@([a-z0-9]+[.])+[a-z0-9]+$'
        text = ['example@mail.com','test12_12.222@mail.ru','example@example.com','example@example.com1', 'example@examp1e.com', 'example-meme_meme111not+mem@sec0ndd0main.mail.co.uk']
        for p in text:
            self.assertTrue(re.match(regex, p));

    def test_fail_mail(self):
        regex = r'^[a-z0-9._+\-]+@([a-z0-9]+[.])+[a-z0-9]+$'
        text = ['example@examplecom','exa-!mple@example.com', 'exampleAexample.com',' example@example.com', 'example@example.com ','example@.com' ,'@example.com','example@example.']
        for p in text:
            self.assertFalse(re.match(regex, p));

if __name__ == '__main__':
    unittest.main()
