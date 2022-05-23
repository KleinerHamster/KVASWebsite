from bottle import post, request
import re 
import pdb
import json
@post('/usefulArticles', method='post')
def k():
    

sample = '\b\+?[7,8](\s*\d{3}\s*\d{3}\s*\d{2}\s*\d{2})\b' #регулярное выражение
date=r'(?<!\d)(?:0?[1-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[01][0-9])(?!\d)'
mail = request.forms.get('name')
def check(mail):
    if (re.fullmatch(sample, mail)): #fullmatch  - полностью вся входящая строка (findall, sub, finditer, etc.)
        return 1
    else:
        return 0

#def k_form():
#    #получение введенных строк
#    mail = request.forms.get('ADRESS')
#    question=request.forms.get('QUEST')
#    dictionary={} #словарь
#    #если оба пустые
#    if question=="" and  mail =="":
#        return "Please enter the question and your mail!" 
#    elif question=="" and mail!="":
#        return "Please enter the question!" 
#    elif mail =="" and   question!="":
#        return "Please enter the e-mail !"
#    else:
#        if check(mail):
#            try:
#                with open('QUE.txt') as json_file:
#                    dictionary = json.load(json_file) #считываю словарь  
#            except:
#                #обработка ошибки если файл json пуст
#                pass    

#            if len(dictionary)==0: # в словаре ничего нет записываем ключ-значение
#                dictionary[mail]=[]
#                dictionary[mail].append(question)
#            else:
#                for key in  dictionary.keys():
#                    #print(key)
#                    if mail==key:#если найден ключ добавляется значение в массив
#                        f=0
#                        dictionary[mail].append(question)
#                        #print("tcnm")
#                        break
#                    else:
#                        f=1
#                if f: #если ключа не было в файле
#                    dictionary[mail]=[]
#                    dictionary[mail].append(question) 
#            with open('QUE.txt', 'w') as outfile:#открытие файла
#                json.dump(dictionary, outfile)#запись в файл indent для более удобеого чтения записей
#            return "Thank you! The answer will be sent to the mail %s" % mail
#        else:
#            return "Your mail is invalid! Try it again"

