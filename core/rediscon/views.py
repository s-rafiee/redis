from django.shortcuts import render
from django.http import HttpResponse
from django.core.cache import cache
import redis


# Create your views here.
def redis_view(request):
    cache.set('foo', 'bar')
    redis = redis.Redis(
        host='localhost',
        port='6379')

    redis.set('mykey', 'Hello from Python!')
    return HttpResponse("hi")
