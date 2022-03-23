from bottle import post, request
import re

@post('/meow', method='post')
def my_form():
    mail = request.forms.get('ADDRESS')
    question = request.forms.get('QUESTION')

    pattern = r'(\w+)@([A-Z0-9]+)\.([A-Z]{2,4})'  
    mem = re.findall(pattern, mail, flags=re.IGNORECASE) 
    if mem.count != 3:
        message = "Incorrect email!"
    else:
        message = "Thanks! The answer will be sent to the mail {}".format(mem)
    return message