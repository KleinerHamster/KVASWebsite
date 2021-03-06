from bottle import post, request
import pdb 
import json
import re 
import datetime
import webbrowser
#post - sends data to the server in a browser request
#request - sending all types of HTTP requests

@post('/feedback', method='post')
def my_form():

    #filling variables with values
    icon=request.forms['IconCount']
    userName = request.forms.get('NAME')
    userSurname = request.forms.get('SURNAME')
    userPhone = request.forms.get('PHONE')
    userFeedback = request.forms.get('FEEDBACK')

    #take date and time by now
    today = datetime.datetime.today()
    printToday = today.strftime("%H:%M:%S %d.%m.%Y")

    #set value for smile-image with 0
    if(icon == ""):
        icon = "0"

    #initialization array anf fill another array with data
    dataFeedback = []
    dataOnce = [userPhone, userName, userSurname, userFeedback, icon, printToday]

    #flag for checking the presence of mail in the fail
    flag=0

    try:
        #loading a dictionary from file
        with open('feedbackFile.json') as jsonFile:
            dataFeedback=json.load(jsonFile)

        #finding old mail in dictionary
        #for i in dataFeedback:
        #    if dataOnce in i:
        #        dataFeedback[i] = dataOnce
        #        flag=1

        #adding new mail in dictionary
        #if flag == 0: 
        #    dataFeedback.append(dataOnce)

        #appand in array new data
        dataFeedback.append(dataOnce)
        
    except ValueError:
            dataFeedback.append(dataOnce)
           
    #saving data to file
    with open('feedbackFile.json', 'w') as outfile:
        json.dump(dataFeedback, outfile)

    #Open in another page current page with fixed port number
    webbrowser.open("http://localhost:64468/feedback")
