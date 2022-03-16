"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/mountain')
@view('mountain')
def preview():
    """Renders the about page."""
    return dict(
        title='Mountain paradise',
        year=datetime.now().year,
    )

@route('/bio/<name>')
@view('human')
def preview(name):
    """Renders the about page."""
    d = dict(
        year = datetime.now().year,
        img = "..\static\images\411px-Anatoli_Bukrejev_Kasahstani_alpinist_1991.jpg",
        name = "",
        disc = "",
        early = "",
        death = "",
        vid1 = "",
        vid2 = ""
        )
    
    return d


#@app.route('/static/<filepath:path>')
#def server_static(filepath):
    #return static_file(filepath, root='C:\Personal\College\Ãƒ  02.02 √ËÚ\Web\MaximilianWithTheRose\WebAlps\AlpsBottleWebProject\static\images\')
