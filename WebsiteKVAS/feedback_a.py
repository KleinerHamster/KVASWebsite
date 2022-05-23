from bottle import post, request
import pdb 
import json
import re 
#post - sends data to the server in a browser request
#request - sending all types of HTTP requests

@post('/feedback', method='post')
def my_form():

    #assigning an address field value
    icon=request.forms['IconCount']
    userName = request.forms.get('NAME')
    userSurname = request.forms.get('SURNAME')
    userPhone = request.forms.get('PHONE')
    userFeedback = request.forms.get('FEEDBACK')

    dataFeedback = {}

    #flag for checking the presence of mail in the fail
    flag=0

    try:
        #loading a dictionary from file
        with open('feedbackFile.json') as jsonFile:
            dataFeedback=json.load(jsonFile)

        #finding old mail in dictionary
        for i in dataFeedback:
            if userPhone in i:
                dataFeedback[userPhone].append(userName)
                dataFeedback[userPhone].append(userSurname)
                dataFeedback[userPhone].append(userFeedback)
                dataFeedback[userPhone].append(icon)
                flag=1

        #adding new mail in dictionary
        if flag == 0: 
            dataFeedback[userPhone] = [userName, userSurname, userFeedback, icon]
        
    except ValueError:
            dataFeedback[userPhone] = [userName, userSurname, userFeedback, icon]
           
    #saving data to file
    with open('feedbackFile.json', 'w') as outfile:
        json.dump(dataFeedback, outfile)

    return "<p>"+icon+"</p>"+"<p>"+userName+"</p>"+"<p>"+userSurname+"</p>"+"<p>"+userPhone+"</p>"+"<p>"+userFeedback+"</p>"
