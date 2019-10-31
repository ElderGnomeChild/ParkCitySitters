from django.urls import path
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from . import views

app_name = 'sit'
urlpatterns = [
    path('', views.index, name='index'),
    path('addsitters', views.addsitters, name="addsitters"),
    path('addjob', views.addjob, name="addjob"),
    path('profile', views.profiles, name="profiles"),
    path('sitterHome', views.sitterHome, name="sitterHome"),
    path('adminHome', views.adminHome, name="adminHome")
]
# urlpatterns += staticfiles_urlpatterns()