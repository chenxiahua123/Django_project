from django.db import models

# Create your models here.
class Wheel(models.Model):
    name=models.CharField(max_length=100)
    img=models.CharField(max_length=100)

    class Meta:
        db_table='网易考拉——轮播图'

class Tuijian(models.Model):
    name = models.CharField(max_length=100)
    img = models.CharField(max_length=100)

    class Meta:
        db_table = '网易考拉——推荐'