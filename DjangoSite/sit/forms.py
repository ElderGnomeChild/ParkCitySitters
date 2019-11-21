from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from .models import Babysitter, Job, Client, Child

class BabysitterCreationForm(UserCreationForm):

    class Meta:
        model = Babysitter
        fields = ('username', 'email')


class BabysitterChangeForm(UserChangeForm):

    class Meta:
        model = Babysitter
        fields = ('username', 'email', 'babysitter_fname', 'babysitter_lname', 'babysitter_phone')

# class ClientForm(forms.Form):
#     client_name = forms.CharField(label='Client Name', max_length=50)
#     client_phone = forms.CharField(label='Client Phone Number', max_length=16)
