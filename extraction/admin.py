from django.contrib import admin
from . import models

# Register your models here.


@admin.register(models.Document)
class DocumentAdmin(admin.ModelAdmin):
    list_display = (
        "description",
        "document",
        "uploaded_at",
        "requirements",
    )
