import hashlib
import random
from datetime import time


from django.core.cache import cache
from django.shortcuts import render, redirect

# Create your views here.
from app.models import Wheel, Tuijian, User


def index(request):

    for i in range(1,8):
        tuijians=Tuijian()
        tuijians.name='banner='+str(i)+'.jpg'
        tuijians.img='picture/'+tuijians.name
        tuijians.save()

    wheels=Wheel.objects.all()
    tuijians=Tuijian.objects.all()
    token=request.session.get('token')

    userid=cache.get(token)

    if userid:

        user=User.objects.get(pk=userid)


        return render(request, 'index.html', context={'wheels': wheels,'tuijians':tuijians,'user':user,'token':token})
    else:
        return render(request,'index.html',context={'wheels': wheels, 'tuijians': tuijians, })







def generate_token():
    # token = str(time()) + str(random.random)
    # md5 = hashlib.md5()
    # md5.update(token.encode('utf-8'))
    #
    # return md5.hexdigest()

    token=str(time())+str(random.random)
    md5=hashlib.md5()
    md5.update(token.encode('utf-8'))

    return md5.hexdigest()


def generate_password(param):

    md5=hashlib.md5()
    md5.update(param.encode('utf-8'))
    return md5.hexdigest()


def register(request):

    if request.method=="GET":

        return render(request, 'register.html')
    if request.method=='POST':

        user=User()
        account_name=request.POST.get('account')
        account_mail=request.POST.get('mail')
        user.account=account_name+account_mail
        user.password=generate_password(request.POST.get('password'))
        user.phone=request.POST.get('phone')

        user.save()

        token=generate_token()

        cache.set(token, user.id, 60*60*24*3)

        request.session['token']=token

        return redirect('app:index')


def logout(request):

    request.session.flush()

    return redirect('app:index')