from fastapi import FastAPI
import json
import os

app = FastAPI()

#Function to get data from the JSON file with two parameters
def get_weekly_info(categ1 = "all", categ2 = None):
    """
    Retourne la partie du JSON qui est utile à la page
    """
    # Open the JSON
    with open('info.json') as f:
        data_return = json.load(f)
    # Check if I want all the data or not
    if categ1 == "all":
        return data_return
    else:
        # Check for a sub category
        if categ2:
            return data_return[categ1][categ2]
        else:
            return data_return[categ1]

@app.get('/')
async def index():
    response = get_weekly_info()
    return response

@app.get('/podium')
async def podium():
    response = get_weekly_info("Podium")
    return response

@app.get('/login')
async def login():
    response = get_weekly_info("Log in")
    return response

@app.get('/double')
async def double_money():
    response = get_weekly_info("Double money")
    return response

@app.get('/triple')
async def triple_money():
    response = get_weekly_info("Triple money")
    return response

@app.get('/discounts/cars')
async def discounts_cars():
    response = get_weekly_info("Discounts","Cars")
    return response

@app.get('/discounts/properties')
async def discounts_Properties():
    response = get_weekly_info("Discounts","Properties")
    return response
