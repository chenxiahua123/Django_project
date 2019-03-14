from django.conf.urls import url

from app import views

urlpatterns=[
    url(r'^index/$',views.index,name='index'),

    url(r'^register/$',views.register,name='register'),
]