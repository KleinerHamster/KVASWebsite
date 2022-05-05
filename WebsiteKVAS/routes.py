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
    return dict(
        title='ourPartners',
        year=datetime.now().year
    )

@route('/activeUsers')
@view('activeUsers')
def contact():
    """Renders the contact page."""
    return dict(
        title='activeUsers',
        year=datetime.now().year
    )
