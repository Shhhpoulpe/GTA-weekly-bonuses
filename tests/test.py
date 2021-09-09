import pytest
import requests

def getPodium():
    r = requests.get('https://127.0.0.1:5000/podium')
    return r.json

def test():
    assert getPodium()=="BR8"