from django.urls import path
from extraction import views

urlpatterns = [
    path("", views.home, name="home"),
    path("json-list/", views.json_list, name="json_list"),
]
