from django.shortcuts import render

# Create your views here.
from app.models import Wheel, Tuijian


def index(request):


    wheels=Wheel.objects.all()


    tuijians=Tuijian.objects.all()

    print(tuijians)




    data={
        'wheels':wheels,
        'tuijians':tuijians,
    }

    return render(request,'index.html',context=data)