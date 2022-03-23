from bottle import post, request

@post('/homepage', method='post')
def my_form():
    mail = request.forms.get('email')
    return "Thanks! The answer will be sent to the mail %s" % mail