from django.urls import path
from . import views

urlpatterns=[
    path("",views.home,name="home"),
    path("about/",views.about,name="about"),
    path("missions/",views.missions,name="missions"),
    path("contact/",views.contact,name="contact"),
    path("gallery/",views.gallery,name="gallery"),
]