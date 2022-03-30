from bottle import post, request
import json
import pdb
import re   
  
regex = r'^[a-z0-9._+\-]+@([a-z0-9]+[.])+[a-z0-9]+$'

def isEmail(mail):
	if(re.search(regex, mail)):
		return True;
	else:
		return False


@post('/home', method='post')
def my_form():
	mail = request.forms.get('ADRESS')
	question = request.forms.get('QUESTION')
	
	if(len(mail)==0):
		return "Enter your email, please!"
	if(len(question)==0):
		return "Enter your question, please!"

	if(not isEmail(mail)):
		return "Enter only valid email, please!"

	questions = {mail: question}

	with open('data.json', 'a') as f:
		json.dump(questions, f)


	# pdb.set_trace();
	return "Thanks! The answer will be sent to the mail %s" % mail


