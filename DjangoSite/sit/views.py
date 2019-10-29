from django.shortcuts import render
from django.http import HttpResponse
from django.template import Context, loader

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
