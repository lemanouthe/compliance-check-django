from django.shortcuts import render
from django.http import JsonResponse
import json
from .datas import RequirementsExtractor
import os
from compliance.settings import BASE_DIR
from extraction.models import Document
# Create your views here.


def home(request):
    datas = ""
    if request.method == "POST" and request.FILES['myfile']:
        myfile = request.FILES['myfile']
        # print(myfile.read())
        fichier = Document.objects.create(document=myfile)
        fichier_path= fichier.document.path

        extractor = RequirementsExtractor(fichier_path)
        
        datas = extractor.process_file()
        json_data = extractor.create_json()
        print(json_data)
        # os.path.basename(self.file_path)
        # Convertissez la liste en JSON et enregistrez-la dans un fichier
        # myfile
        # with open("extracted_requirements.json", "w") as json_file:
        #     json.dump(self.extracted_requirements_list, json_file, indent=4)
    context = {"data": datas}
    return render(request, "index.html", context)
