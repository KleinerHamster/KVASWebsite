from bottle import post, request
import pdb
import json
import webbrowser
import urllib.request
import checkPhone



@post('/ourPartners', method='post')
def my_form():
    
    
    image = ""
    name = request.forms.get('companyName') 
    link = request.forms.get('link')
    phone = request.forms.get('phone') 
    you = request.forms.get('you')
    file = request.forms.get('file')

    data=[]
        
    try:
        with open('sofi.json') as j:
                data=json.load(j)
    except:
        pass

    url=file
    img = urllib.request.urlopen(url).read()
    out = open("static\images\our_partners\\"+(str)(len(data)+1)+"img.jpg", "wb")
    out.write(img)
    out.close

    
    information=["static\images\our_partners\\"+(str)(len(data)+1)+"img.jpg",name,you,phone,link]

    try:
        with open('sofi.json') as j:
            data.append(information)
    except ValueError:
        data.append(information)

    with open('sofi.json','w') as outfile:
        json.dump(data,outfile)
    

    webbrowser.open("http://localhost:64468/ourPartners")
    

