from bottle import post, request
import pdb
import json

@post('/homepage', method='post')
def my_form():
    data={}#c������
    email = request.forms.get('email') #�������� ����� � �����
    question= request.forms.get('QUEST') #�������� ������ � �����
    #pdb.set_trace()
    f=0
    #��������� ���� � ��������� ����������
    try:
        with open ('data.txt') as file:
            data=json.load(file)
    except:
        pass
    if len(data)==0:#���� ������� ������
        data[email]=[]#������� ���� ��� ��������
        data[email].append(question)#��������� ������
    else:
        for key in data.keys():#���������� ������ ���� � ������� � ��� ��������� ��������
            if email==key:#���� ����� ������� �� ��������� ��� ������ � ���������
                f=0
                data[email].append(question)
                break
            else:
                f=1
        if f:#���� ����� �����
            data[email]=[]
            data[email].append(question)

    #��������� ������ � ����
    with open ('data.txt', 'w') as file:
        json.dump(data, file)
    return "Thanks! The answer will be sent to the mail %s" % email