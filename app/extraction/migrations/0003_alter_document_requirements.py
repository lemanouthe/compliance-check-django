# Generated by Django 4.2.5 on 2023-10-17 09:34

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("extraction", "0002_alter_document_requirements"),
    ]

    operations = [
        migrations.AlterField(
            model_name="document",
            name="requirements",
            field=models.FileField(blank=True, null=True, upload_to="requirements/"),
        ),
    ]
