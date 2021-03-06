from django.urls import path
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from . import views

app_name = 'sit'
urlpatterns = [
    path('', views.index, name='index'),
    path('addsitters', views.addsitters, name="addsitters"),
    path('addjob', views.addjob, name="addjob"),
    path('profile/<int:sitter_id>', views.profiles, name="profiles"),
    path('sitterHome/<int:sitter_id>', views.sitterHome, name="sitterHome"),
    path('adminHome', views.adminHome, name="adminHome"),
    path('<int:job_id>', views.showJobTest, name="seeJob"),
    path('<int:job_id>/<int:sitter_id>', views.showJobSitter, name="seeJobSitter"),
    path('jobs', views.seeJobsTest, name="seeJobs"),
    path('clientform', views.addClient, name="newClient"),
    path('childform', views.addChild, name="newChild"),
    path('sitters', views.seeSitters, name="sitters"),
    path('past', views.pastJobs, name="past"),
    path('accepted', views.acceptedJobs, name="accepted"),
    path('pending', views.pendingJobs, name="pending"),
    path('available/<int:sitter_id>', views.availableJobs, name="available"),
    path('pickup/<int:job_id>/<int:sitter_id>', views.pickupJob, name="pickup"),
    path('client/<int:client_id>', views.showClient, name='client'),
    path('login', views.sitterLog, name='sitlog'),
]
# urlpatterns += staticfiles_urlpatterns()