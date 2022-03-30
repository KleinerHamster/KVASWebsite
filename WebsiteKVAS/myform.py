from bottle import post, request
import pdb

@post('/homepage', method='post')
def my_form():
    questions={}
    mail = request.forms.get('email')
    email= mail
    question= request.forms.get('QUEST')
    questions[email]=question
    pdb.set_trace()
    return "Thanks! The answer will be sent to the mail %s" % mail