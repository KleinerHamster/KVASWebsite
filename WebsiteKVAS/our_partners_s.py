from bottle import post, request
import pdb
import json
import webbrowser
import urllib.request



@post('/ourPartners', method='post')
def my_form():
    
    
    image = ""
    name = request.forms.get('companyName') 
    link = request.forms.get('link')
    phone = request.forms.get('phone') 
    you = request.forms.get('you')
    file = request.forms.get('file')

    data=[]
    with open('sofi.json') as j:
            data=json.load(j)
    

    url=file
    img = urllib.request.urlopen(url).read()
    out = open((str)(len(data)+1)+"imgp.jpg", "wb")
    out.write(img)
    out.close

    
    information=[(str)(len(data)+1)+"imgp.jpg",you,name,phone,link]

    try:
        with open('sofi.json') as j:
            data.append(information)
    except ValueError:
        data.append(information)

    with open('sofi.json','w') as outfile:
        json.dump(data,outfile)
    

    webbrowser.open("http://localhost:51124/ourPartners")
    

