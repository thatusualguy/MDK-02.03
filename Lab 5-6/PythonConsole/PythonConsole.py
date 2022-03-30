import re

regex = r'^\+7\s\((\d{3})\)\s\d{3}(-\d{2}){2}$'
text = ['+7 (111) 111-11-11', '+7 (911) 173-56-71', 
        '+7 (123) 456-78-90', '+7 (111) 111-11-111', 
        '1+7 (111) 111-11-11', '+7(111) 111-11-11', 
        '+7 111 111-11-11', '111111-11-11', 
        '81111111111', '+7 (111) 111-11-11 ',
        ' +7 (111) 111-11-11']

for p in text:
    if(re.match(regex, p)):
        res = "OK +"
    else:
        res = "NO -"
    print(res + ' ' + p)

print()
print()
print()

regex = r'^[a-z0-9._+\-]+@([a-z0-9]+[.])+[a-z0-9]+$'
text = ['example@mail.com','test12_12.222@mail.ru','example@example.com',
        'example@examp1e.com',
        'example-meme_meme111not+mem@sec0ndd0main.mail.co.uk',  
        
        'example@example.com1','example@examplecom','exa-!mple@example.com',
        'exampleAexample.com',' example@example.com',
        'example@example.com ','example@.com' ,'@example.com','example@example.']

for p in text:
    if(re.match(regex, p)):
        res = "OK +"
    else:
        res = "NO -"
    print(res + ' ' + p)