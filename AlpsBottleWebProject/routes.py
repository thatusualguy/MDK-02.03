"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

class MountainCondition:
    name: str
    description: str
    image_link: str

    def __init__(self, name: str, description: str, image_link: str):
        self.name = name
        self.description = description
        self.image_link = image_link

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year,
        mountain_condition=[
            MountainCondition(
                'Эверест',
                'Эверест, известный также как Джомолунгма, является самой высокой точкой нашей планеты.',
                'https://i.imgur.com/CwxmBW3.png'
            ),
            MountainCondition(
                'Гималаи',
                'Гималаи — высочайшая горная система Земли, расположенная между Тибетским нагорьем на севере и Индо-Гангской равниной на юге.',
                'https://imgur.com/NwHmNir.png'
            ),            
            MountainCondition(
                'Канченджанга',
                'Канченджанга — горный массив в Гималаях, главная вершина которого, высотой 8586 м над уровнем моря, является третьим по высоте восьмитысячником мира.',
                'https://i.imgur.com/r3X1hLo.png'
            ),            
            MountainCondition(
                'Макалу',
                'Макалу – пятая по высоте гора мира, она расположена в 22 км к востоку от горы Эверест.',
                'https://imgur.com/mdrvXaR.png'
            ),
            MountainCondition(
                'Аннапурна',
                'Аннапурна — горный массив в Гималаях, где находятся высочайшие вершины — Аннапурна и Дхаулагири, разделенные самой глубокой на планете долиной Калигандаки.',
                'https://i.imgur.com/0FdHZ42.jpg'
            ),
        ]
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