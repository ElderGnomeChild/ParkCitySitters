from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, Http404
from django.template import Context, loader
from .models import Job, Child, Babysitter
import datetime

# Create your views here.

def index(request):
    # return HttpResponse("Hello, world. You're at the sit index.")
    # template = loader.get_template("sit/login.html")
    # return HttpResponse(template.render())
    return render(request, 'sit/login.html')

def addsitters(request):
    return render(request, 'sit/addsitters.html')

def addjob(request):
    return render(request, 'sit/addjob.html')

def adminHome(request):
    return render(request, 'sit/adminHome.html')

def profiles(request, sitter_id):
    sitter = get_object_or_404(Babysitter, pk=sitter_id)
    jobs = Job.objects.all()
    langs = sitter.babysitter_languages.all()
    now = datetime.datetime.now()
    # jobs = Job.objects.get(sitter=sitter)
    return render(request, 'sit/profiles.html', {'sitter':sitter, 'langs':langs, 'jobs':jobs, 'now':now})

def sitterHome(request):
    return render(request, 'sit/sitterHome.html')

def showJobTest(request, job_id):
    job = get_object_or_404(Job, pk=job_id)
    children = job.child.all()
    return render(request, 'sit/oneJobTest.html', {'job':job, 'children':children})

def seeJobsTest(request):
    job_list= Job.objects.order_by('id')
    # output = ', '.join([j.location for j in job_list])
    # template = loader.get_template('sit/showJobTest.html')
    context= {'job_list':job_list}
    # return HttpResponse(template.render(context, request))
    return render(request, 'sit/showJobTest.html', context)