from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from .models import Babysitter

class BabysitterCreationForm(UserCreationForm):

    class Meta:
        model = Babysitter
        fields = ('username', 'email')


class BabysitterChangeForm(UserChangeForm):

    class Meta:
        model = Babysitter
        fields = ('username', 'email', 'babysitter_fname', 'babysitter_lname', 'babysitter_phone')