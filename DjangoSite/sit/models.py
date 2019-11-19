from django.db import models
from django.apps import apps
from django.contrib.auth.models import AbstractUser
# from users.models import Babysitter
# Create your models here.

class Client(models.Model):
    client_name = models.CharField(max_length=100)
    client_phone = models.CharField(max_length=16)

    def __str__(self):
        return self.client_name


class Child(models.Model):
    child_firstname = models.CharField(max_length=25)
    child_age_years = models.IntegerField('years old')
    child_age_months = models.IntegerField('months old')
    child_allergies = models.TextField(max_length=500)
    child_parent = models.ForeignKey(Client, on_delete=models.CASCADE)

    def __str__(self):
        return self.child_firstname + ", child of " + self.child_parent.client_name

class Language(models.Model):
    language_name = models.CharField(max_length=25)
    
    def __str__(self):
        return self.language_name


class Babysitter(AbstractUser):
    babysitter_lname = models.CharField(max_length=30, default='last name')
    babysitter_fname = models.CharField(max_length=30, default='first name')
    babysitter_phone = models.CharField(max_length=16, default="not set")
    # babysitter_email = models.EmailField(max_length=70)
    babysitter_years_of_experience = models.PositiveIntegerField(default=0)
    babysitter_address_street1 = models.CharField(max_length=50, default="no address on file")
    babysitter_address_street2 = models.CharField(max_length=20, blank=True, null=True)
    babysitter_address_city = models.CharField(max_length=25, null=True)
    babysitter_address_state = models.CharField(max_length=2, default="UT")
    babysitter_address_zip = models.PositiveIntegerField(default="00000")

    babysitter_works_with_disabilities = models.BooleanField(default=False)
    babysitter_age01_or_younger = models.BooleanField(default=False)
    babysitter_age02 = models.BooleanField(default=True)
    babysitter_age03 = models.BooleanField(default=True)
    babysitter_age04 = models.BooleanField(default=True)
    babysitter_age05 = models.BooleanField(default=True)
    babysitter_age06 = models.BooleanField(default=True)
    babysitter_age07 = models.BooleanField(default=True)
    babysitter_age08 = models.BooleanField(default=True)
    babysitter_age09 = models.BooleanField(default=True)
    babysitter_age10 = models.BooleanField(default=True)
    babysitter_age11 = models.BooleanField(default=True)
    babysitter_age12_plus = models.BooleanField(default=True)

    babysitter_languages = models.ManyToManyField(Language)

    def __str__(self):
        return self.babysitter_fname+ " " +self.babysitter_lname

class Job (models.Model):
    location = models.CharField(max_length=50)
    datetime_start = models.DateTimeField()
    datetime_end = models.DateTimeField()
    num_child = models.PositiveIntegerField()
    sitter = models.ForeignKey(Babysitter, on_delete=models.SET_NULL, null=True, blank=True, default=None)
    client = models.ForeignKey(Client, on_delete=models.SET_NULL, null=True, blank=True,  default=None)
    child = models.ManyToManyField(Child, blank=True)

    # def __str__(self):
    #     return "Job " + self._check_id_field

    
