from bottle import post, request
import pdb
import json
import webbrowser
import urllib.request
import checkPhone



@post('/ourPartners', method='post')
def my_form():
    
    # reading data from the form
    name = request.forms.get('companyName') 
    link = request.forms.get('link')
    phone = request.forms.get('phone') 
    you = request.forms.get('you')
    file = request.forms.get('file')

    # an array that stores information about partner companies
    array_company=[]
    
    
    # reading from a data file into an array
    with open('partnerCompany.json') as json_file:
            array_company=json.load(json_file)


    url=file
    img = urllib.request.urlopen(url).read()
    out = open("static\images\our_partners\\"+(str)(len(array_company)+1)+"img.jpg", "wb")
    out.write(img)
    out.close

    # filling in the array with the added data from the form
    information=["static\images\our_partners\\"+(str)(len(array_company)+1)+"img.jpg",name,you,phone,link]

    # adding new information to the general array
    #try:
    #    with open('partnerCompany.json') as json_file:
    #        array_company.append(information)
    #except ValueError:
    #    array_company.append(information)

    array_company.append(information)
    # 
    with open('partnerCompany.json','w') as outfile:
        json.dump(array_company,outfile)
    

    webbrowser.open("http://localhost:64468/ourPartners")
    