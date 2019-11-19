from django.contrib import admin

# Register your models here.

from django.contrib.auth import get_user_model
from django.contrib.auth.admin import UserAdmin

from .forms import BabysitterCreationForm, BabysitterChangeForm
from .models import Babysitter
# Register your models here.

class BabysitterAdmin(UserAdmin):
    add_form = BabysitterCreationForm
    form = BabysitterChangeForm
    model = Babysitter
    list_display = ['email', 'username',]

admin.site.register(Babysitter, BabysitterAdmin)