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

    array_company=[]
        
    try:
        with open('partnerCompany.json') as j:
                array_company=json.load(j)
    except:
        pass

    url=file
    img = urllib.request.urlopen(url).read()
    out = open("static\images\our_partners\\"+(str)(len(array_company)+1)+"img.jpg", "wb")
    out.write(img)
    out.close

    information=["static\images\our_partners\\"+(str)(len(array_company)+1)+"img.jpg",name,you,phone,link]

    try:
        with open('partnerCompany.json') as j:
            array_company.append(information)
    except ValueError:
        array_company.append(information)

    with open('partnerCompany.json','w') as outfile:
        json.dump(array_company,outfile)
    

    webbrowser.open("http://localhost:64468/ourPartners")
    

