import urllib

import bs4 as bs
#import urllib.request
import requests
import re
import _mysql
import time

import MySQLdb as mdb
"""
DB_HOST = 'webscraping.cuho7a3k3fno.us-west-2.rds.amazonaws.com'
DB_USER = 'userweb'
DB_PASSWORD = 'cristian31'
DB_NAME = 'webscraping'
"""
DB_HOST = 'localhost'
DB_USER = 'root'
DB_PASSWORD = 'cristian31'
DB_NAME = 'webscraping'


SafeLink = []
SafeLink2 = []
listanueva = []
listaImagenes = []
AllURL=[]
DatosNuevos =[]

for i in range(1,2):
    URL = urllib.request.urlopen('https://www.encuentra24.com/costa-rica-es/autos-motos.' + str(i)).read()
    soup = bs.BeautifulSoup(URL, 'lxml')
    for item in soup.findAll('a', {'class': 'ann-box-title'}):
        #print(item)
        LinkHref = (item.get('href'))
        SafeLink.append(LinkHref)
        ListCast = list(set(SafeLink))

    for i in ListCast:
        listanueva.append('https://www.encuentra24.com/'+i)
print("Scraping links")
for i in listanueva:
    print(i)

print("Localizacion   Marca  Modelo    Enviado     Precio      Año   Kilometros   Motor   Imagen ")
print("Scannig.....")
for i in listanueva:
    Second_URL = urllib.request.urlopen(i).read()
    Second_soup = bs.BeautifulSoup(Second_URL, 'lxml')
    ListTemporal=[]
    for f in Second_soup.findAll('span', {'class': 'info-value'}):
        valor = (f.text).lstrip("$")
        datos = valor.lstrip("₡")
        #print(datos)
        ListTemporal.append(datos)
    AllURL.append(ListTemporal)
    listatemp = []
    for f in Second_soup.findAll('a', href=True):
        valor = f.get('href')
        if '.jpg' in valor:
            listatemp.append(f.get('href'))
            break
    listaImagenes.append(listatemp)
for i in range(len(AllURL)):
    DatosNuevos.append(AllURL[i]+listaImagenes[i])
def create_and_populate():
    con = mdb.connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME)
    with con:
        cur = con.cursor()
        #sql = "CREATE TABLE encuentra24 (id INT PRIMARY KEY AUTO_INCREMENT, localizacion VARCHAR(25), marca VARCHAR(25), modelo VARCHAR(25), Enviado VARCHAR(25), precio VARCHAR(25), ano VARCHAR(25), kilometros VARCHAR(25),motor VARCHAR(25),imagen VARCHAR(100))"
        #sql = "CREATE TABLE auditoria (id INT PRIMARY KEY AUTO_INCREMENT, fecha VARCHAR(25), paginaWeb VARCHAR(100), numeroRegistros VARCHAR(25), estado VARCHAR(25), errores VARCHAR(25))"
        #cur.execute(sql)
        valor = "value"
        for i in DatosNuevos:
            print(i)
            fecha = time.strftime("%x")
            paginaWeb ='https://www.encuentra24.com/'
            NumeroRegistro = len(i)
            estado = "finalizado"
            errores = "0"
            try:

                if len(i) ==7:
                    kilometros = "ND"
                    motor = "ND"
                    cur.execute("INSERT INTO encuentra24 (localizacion,marca,modelo,Enviado,precio,ano,kilometros,motor,imagen) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s')" % (i[0],i[1],i[2],i[3],i[4],i[5],kilometros,motor,i[6]))
                if len(i) ==8:
                    motor = "ND"
                    cur.execute("INSERT INTO encuentra24 (localizacion,marca,modelo,Enviado,precio,ano,kilometros,motor,imagen) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s')" % (i[0],i[1],i[2],i[3],i[4],i[5],motor,i[6],i[7]))
                if len(i) ==9:
                    cur.execute("INSERT INTO encuentra24 (localizacion,marca,modelo,Enviado,precio,ano,kilometros,motor,imagen) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s')" % (i[0],i[1],i[2],i[3],i[4],i[5],i[6],i[7],i[8]))
                cur.execute("INSERT INTO auditoria(fecha,paginaWeb,numeroRegistros,estado,errores) VALUES ('%s','%s','%s','%s','%s')" % (fecha, paginaWeb, NumeroRegistro, estado, errores))
            except mdb.Error as e:
                print("Faltan datos")

create_and_populate()

