from django.conf.urls import url

from app import views

urlpatterns=[
    url(r'^index/$',views.index,name='index'),

    url(r'^register/$',views.register,name='register'),

    url(r'^logout/$',views.logout,name='logout'),

    url(r'^login/$',views.login,name='login'),

    url(r'^account_check/$',views.account_check,name='account_check'),

    url(r'^detail/$',views.detail,name='detail'),

    url(r'^shop/(?P<id>\d+)/$',views.shop,name='shop'),

    url(r'^addcart/$',views.addcart,name='addcart'),

    url(r'^minuscart/$',views.minuscart,name='minuscart'),

    url(r'^add_cart/$',views.add_cart,name='add_cart'),

    url(r'^cart/$',views.cart,name='cart'),
]