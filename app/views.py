import hashlib
import random
from datetime import time


from django.core.cache import cache
from django.http import JsonResponse
from django.shortcuts import render, redirect

# Create your views here.
from app.models import Wheel, Tuijian, User, Goods


def index(request):

    goods=Goods.objects.all()[0:4]
    wheels=Wheel.objects.all()
    tuijians=Tuijian.objects.all()
    token=request.session.get('token')

    userid=cache.get(token)

    if userid:

        user=User.objects.get(pk=userid)


        return render(request, 'index.html', context={'wheels': wheels,'tuijians':tuijians,'user':user,'token':token,'goods':goods})
    else:
        return render(request,'index.html',context={'wheels': wheels, 'tuijians': tuijians,'goods':goods })







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


def login(request):

    if request.method=='GET':
        return render(request, 'login.html')
    if request.method=='POST':
        account=request.POST.get('account')
        password=generate_password(request.POST.get('password'))

        user=User.objects.filter(account=account).filter(password=password)
        print(111111)

        if user:
            print(222222)
            user=user.first()
            token=generate_token()
            request.session['token']=token
            cache.set(token,user.id)

            return redirect('app:index')

        else:
            print(333333)
            return render(request,'login.html',context={'error':'账户密码错误'})


def account_check(request):
    print('pppppppppppppppp')
    account=request.GET.get('account')
    mail=request.GET.get('mail')
    print(account,mail)
    new_account=account+mail
    print(6666)
    user=User.objects.filter(account=new_account)
    print(11111111111111111)

    if user:
        print(222222222222)
        return JsonResponse({'msg': '账户存在','status':0})
    else:
        print(33333333333333333)
        return JsonResponse({'msg': '账户可使用','status':1})


def detail(request):
    return render(request,'detail.html')


def shop(request):
    return render(request,'shop.html')