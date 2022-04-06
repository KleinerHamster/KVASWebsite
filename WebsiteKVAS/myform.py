from bottle import post, request
import pdb
import json

@post('/homepage', method='post')
def my_form():
    data={}#cловарь
    email = request.forms.get('email') #получаем почту с формы
    question= request.forms.get('QUEST') #получаем вопрос с формы
    #pdb.set_trace()
    f=0
    #открываем файл и считываем информацию
    try:
        with open ('data.txt') as file:
            data=json.load(file)
    except:
        pass
    if len(data)==0:#если словарь пустой
        data[email]=[]#создаем лист для вопросов
        data[email].append(question)#добавляем вопрос
    else:
        for key in data.keys():#сравниваем каждый ключ в словаре с уже введенным массивом
            if email==key:#если почта нашлась то добавляем уже вопрос к имеющимся
                f=0
                data[email].append(question)
                break
            else:
                f=1
        if f:#если новая почта
            data[email]=[]
            data[email].append(question)

    #добавляем данные в файл
    with open ('data.txt', 'w') as file:
        json.dump(data, file)
    return "Thanks! The answer will be sent to the mail %s" % email