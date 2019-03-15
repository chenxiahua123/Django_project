from django.conf.urls import url

from app import views

urlpatterns=[
    url(r'^index/$',views.index,name='index'),

    url(r'^register/$',views.register,name='register'),

    url(r'^logout/$',views.logout,name='logout'),

    url(r'^login/$',views.login,name='login'),

    url(r'^account_check/$',views.account_check,name='account_check'),

    url(r'^detail/$',views.detail,name='detail'),

    url(r'^shop/$',views.shop,name='shop'),
]