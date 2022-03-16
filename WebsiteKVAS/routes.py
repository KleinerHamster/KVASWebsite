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
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/thingworx')
@view('thingworx')
def contact():
    """Renders the contact page."""
    return dict(
        title='thingworx',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/lastnews')
@view('lastnews')
def contact():
    """Renders the contact page."""
    return dict(
        title='homepage',
        message='хуй',
        year=datetime.now().year
    )
