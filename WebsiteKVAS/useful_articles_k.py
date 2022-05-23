from bottle import post, request
import re 
import pdb
import json
date=r'(?<!\d)(?:0?[1-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[01][0-9])(?!\d)'
def check(date):
    if (re.fullmatch(date,date)): #fullmatch  - полностью вся входящая строка (findall, sub, finditer, etc.)
        return 1
    else:
        return 0
dictionary={}
@post('/usefulArticles', method='post')
def k():
    dictionary={}
    name=request.forms.get('name')
    name_of_article=request.forms.get('name_of_article')
    article=request.forms.get('article')
    date=request.forms.get('date')
    #############
    try:
        with open('useful_articles.txt') as json_file:
            dictionary = json.load(json_file)   
    except:
        pass    
    if len(dictionary)==0: # в словаре ничего нет записываем ключ-значение
        dictionary[name_of_article]=[name, article, date]
    else:
        for key in  dictionary.keys():
            if name_of_article==key:
                return "An article with the same name already exists, please come up with a new name!"
        dictionary[name_of_article]=[]
        dictionary[name_of_article].append(name) 
        dictionary[name_of_article].append(article)
        dictionary[name_of_article].append(date)
    with open('useful_articles.txt', 'w') as outfile:#открытие файла
        json.dump(dictionary, outfile)
    return "YES!"
def count_of_dictionary():
    import re 
    import pdb
    import json
    dictionary={} 
    with open('useful_articles.txt') as json_file:
        dictionary = json.load(json_file)  
    return dictionary
