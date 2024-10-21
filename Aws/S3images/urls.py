from django.urls import path
from . import views

urlpatterns = [
    path('', views.getImagesFromS3, name='getImages'),
]
