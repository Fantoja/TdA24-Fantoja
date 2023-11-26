from django.shortcuts import render, HttpResponse

# Vratí domovskou stránku
def home(request):
    return HttpResponse("Hello dA")

# Funkce vrátí json soubor
def get_json(request):
    return HttpResponse("{'secret': 'The cake is a lie!'}")

