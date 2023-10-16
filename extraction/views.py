from django.shortcuts import render, redirect
from django.http import JsonResponse
import json
from .datas import RequirementsExtractor
import os
from compliance.settings import BASE_DIR
from extraction.models import Document

# Create your views here.


def home(request):
    if request.method == "POST" and request.FILES["myfile"]:
        myfile = request.FILES["myfile"]

        fichier = Document.objects.create(document=myfile)
        return redirect("json_list")
    return render(request, "index.html")


def json_list(request):
    fichier = Document.objects.order_by('-uploaded_at').first()
    if fichier:
        fichier_path = fichier.document.path

        extractor = RequirementsExtractor(fichier_path)

        extract_datas = extractor.process_file()

        datas = {
            "list_of_requirements": json.loads(extract_datas),
        }
        return JsonResponse(datas, safe=False)

    return render(request, "json_list.html")
