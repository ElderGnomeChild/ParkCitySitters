from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from .models import Babysitter, Job, Client, Child
from django.contrib.admin import widgets  

class BabysitterCreationForm(UserCreationForm):

    class Meta:
        model = Babysitter
        fields = ('username', 'email')


class BabysitterChangeForm(UserChangeForm):

    class Meta:
        model = Babysitter
        fields = ('username', 'email', 'babysitter_fname', 'babysitter_lname', 'babysitter_phone')

class ClientForm(forms.Form):
    client_name = forms.CharField(label='Client Name', max_length=50)
    client_phone = forms.CharField(label='Client Phone Number', max_length=16)

class JobForm(forms.Form):
    client = forms.ModelChoiceField(Client.objects.all(), label='Client')
    num_child = forms.IntegerField(max_value=10, min_value=1, label='Number of Children')
    child = forms.ModelMultipleChoiceField(Child.objects.all(), label='Children')
    location = forms.CharField(max_length=50, label='Location')
    datetime_start = forms.DateTimeField(label='Job Start', widget=forms.TextInput(attrs={'placeholder': 'YYYY-MM-DD HH:MM'}))
    datetime_end = forms.DateTimeField(label='Job End', widget=forms.TextInput(attrs={'placeholder': 'YYYY-MM-DD HH:MM'}))
    sitter = forms.ModelChoiceField(Babysitter.objects.all(), label='Babysitter (optional)', required=False)
    
