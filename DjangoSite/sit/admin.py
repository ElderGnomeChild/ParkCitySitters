from django.contrib import admin

# Register your models here.

from django.contrib.auth import get_user_model
from django.contrib.auth.admin import UserAdmin

from .forms import BabysitterCreationForm, BabysitterChangeForm
from .models import Babysitter, Child, Client, Language, Job
# Register your models here.

class BabysitterAdmin(UserAdmin):
    add_form = BabysitterCreationForm
    form = BabysitterChangeForm
    model = Babysitter
    list_display = ['id', 'babysitter_lname','babysitter_fname', 'email', 'username', 'babysitter_phone', 'babysitter_works_with_disabilities']

admin.site.register(Babysitter, BabysitterAdmin)
admin.site.register(Client)
admin.site.register(Language)
admin.site.register(Child)
admin.site.register(Job)