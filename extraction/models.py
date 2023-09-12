from django.db import models

# Create your models here.

class Document(models.Model):
    description = models.CharField(max_length=255, blank=True)
    document = models.FileField(upload_to='documents/')
    requirements = models.FileField(upload_to='documents/json/', blank=True, null=True)
    uploaded_at = models.DateTimeField(auto_now_add=True)