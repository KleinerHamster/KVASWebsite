from bottle import post, request, template
import re 
import pdb
import json
import  datetime as date_time#loading libraries
from datetime import date as date_t
date_regular=r'(19[9][0-9]|20[01][0-9]|20[2][0-2])-(0?[1-9]|1[0-2])-(0?[1-9]|[12][0-9]|3[01])'#regular expression
#function on the correct date format
def check(mail):
    if (re.fullmatch(date_regular, mail)):
        return True
    else:
        return False
dictionary={}#creating a dictionary that will be written to a file
#request processing
@post('/usefulArticles', method='post')
def k():
    dictionary={}
    #getting data from the user
    name=request.forms.get('name')
    name_of_article=request.forms.get('name_of_article')
    article=request.forms.get('article')
    date_writing=request.forms.get('date')
    #checking checking the correctness of the date format
    if check( date_writing):
        curdate=date_time.datetime.today()
        if date_time.datetime.strptime(date_writing, '%Y-%m-%d') <= curdate:
            try:
                #opening a file for reading
                with open('useful_articles.txt') as json_file:
                    dictionary = json.load(json_file)   
            except:
                pass    
            if len(dictionary)==0: # there is nothing in the dictionary, we write down the key-value
                dictionary[name_of_article]=[name, article, date_writing]
            else:#if the document is not empty
                for key in  dictionary.keys():
                    if name_of_article==key:
                        replay_txt= "An article with the same name already exists, please come up with a new name!"
                        return template('template_for_mistks', replay_txt=replay_txt,button_back='/usefulArticles')
                #adding new values to the dictionary
                dictionary[name_of_article]=[]
                dictionary[name_of_article].append(name) 
                dictionary[name_of_article].append(article)
                dictionary[name_of_article].append(date_writing)
            with open('useful_articles.txt', 'w') as outfile:#opening a file for recording
                json.dump(dictionary, outfile)
            replay_txt="Your article has been published, thanks! To read it, return to the same page!"
            try:
                return template('template_for_mistks', replay_txt=replay_txt,button_back='/usefulArticles')
            except:
                pass
            #output of the corresponding message
        else:
             replay_txt="The date of writing the article cannot be later than the current one."
             return template('template_for_mistks', replay_txt=replay_txt,button_back='/usefulArticles')

#output of the corresponding message
    else:
        replay_txt="Incorrect value!"
        return template('template_for_mistks', replay_txt=replay_txt,button_back='/usefulArticles')