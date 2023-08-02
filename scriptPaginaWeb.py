import requests
from bs4 import BeautifulSoup

def extract_data_from_html(url):
    # Effettua una richiesta HTTP per ottenere il contenuto della pagina HTML
    response = requests.get(url)

    # Verifica se la richiesta ha avuto successo
    if response.status_code == 200:
        # Utilizza BeautifulSoup per analizzare il contenuto HTML della pagina
        soup = BeautifulSoup(response.text, 'html.parser')

        # Qui puoi utilizzare i metodi di BeautifulSoup per estrarre le informazioni di interesse
    
        paragraphs = soup.find('article', class_="story primary-content text money row")

        f = open("datasetEventiStorici.csv", "w")
        f.write("year,event\n")
        while (True):

            image = paragraphs.find_next('p')
            if image is None: 
                break
            
            date = image.text.split(":")[0]
            if ( len(date) == 4):
                f.write("%s,%s\n"%(date, image.text.split(":")[1].strip()))
              #  print(image.text)
            paragraphs = image

        f.close()
  
# Esegui la funzione passando l'URL della pagina HTML da cui desideri estrarre le informazioni
url = 'https://eu.usatoday.com/story/money/2020/09/06/the-worlds-most-important-event-every-year-since-1920/113604790/'
extract_data_from_html(url)
