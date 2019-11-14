from django.db import models

# Create your models here.

class Client(models.Model):
    client_name = models.CharField(max_length=100)
    client_phone = models.CharField(max_length=16)


class Child(models.Model):
    child_firstname = models.CharField(max_length=25)
    child_age_years = models.IntegerField('years old')
    child_age_months = models.IntegerField('months old')
    child_allergies = models.TextField(max_length=500)
    child_parent = models.ForeignKey(Client, on_delete=models.CASCADE)

