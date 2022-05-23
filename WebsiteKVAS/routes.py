"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/homepage')
@view('homepage')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/blockchain')
@view('blockchain')
def about():
    """Renders the about page."""
    return dict(
        title='blockchain',
        message='',
        year=datetime.now().year
    )

@route('/thingworx')
@view('thingworx')
def contact():
    """Renders the contact page."""
    return dict(
        title='thingworx',
        message='',
        year=datetime.now().year
    )

@route('/lastnews')
@view('lastnews')
def contact():
    """Renders the contact page."""
    return dict(
        title='homepage',
        message='',
        year=datetime.now().year
    )

@route('/feedback')
@view('feedback')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/usefulArticles')
@view('usefulArticles')
def about():
    """Renders the about page."""
    return dict(
        title='usefulArticles',
        year=datetime.now().year
    )

@route('/ourPartners')
@view('ourPartners')
def contact():
    """Renders the contact page."""
    import pandas as pd
    import json

    

    data_frame = pd.DataFrame(columns=['','Company name','Description','Contact phone number','Learn more'])

    array_company=[]
 
    with open('partnerCompany.json') as j:
        array_company=json.load(j)
    array_company.reverse()

    for i in range(0,len(array_company)):
        data_frame = data_frame.append({'':"<img src="+array_company[i][0]+" width=200/>",'Company name':array_company[i][1],'Description':array_company[i][2],'Contact phone number':array_company[i][3],
                            'Learn more':array_company[i][4]}, ignore_index=True)
    
    #<img src="static\images\curly_sue\7imgp.jpg"/>
    html=data_frame.to_html(render_links=True,escape=False)

    return dict(
        title='ourPartners',
        year=datetime.now().year,
        html=html
    )

@route('/activeUsers')
@view('activeUsers')
def contact():
    """Renders the contact page."""
    return dict(
        title='activeUsers',
        year=datetime.now().year
    )
