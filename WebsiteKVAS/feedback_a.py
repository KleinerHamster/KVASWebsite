from bottle import post, request
import pdb 
import json
import re 
#post - sends data to the server in a browser request
#request - sending all types of HTTP requests

@post('/feedback', method='post')
def my_form():
    icon=request.forms['IconCount']
    mail = request.forms.get('ADRESS')
    return "<p>"+icon+"</p>"
