puntos=0
print("¿Qué río está en la frontera entre Galicia y Portugal?")
print("a) Duero")
print("b) Miño")
print("c) Tajo")
respuesta=input("Tu respuesta es (a/b/c): ")
if respuesta=="Miño" or respuesta.lower()=="b":
    print("Respuesta acertada")
    puntos = puntos + 10
else:
    print("Has fallado")
    puntos = puntos - 5
print("¿Dónde se encuentra el Museo del Prado?")
print("a) Madrid")
print("b) Barcelona")
print("c) Sevilla")
respuesta=input("Tu respuesta es (a/b/c): ")
if respuesta=="Madrid" or respuesta.lower()=="a":
    print("Respuesta acertada")
    puntos = puntos + 10
else:
    print("Has fallado")
    puntos = puntos - 5
print("¿Como es la carga del protón")
print("a) Negativa")
print("b) Neutra")
print("c) Positiva")
respuesta=input("Tu respuesta es (a/b/c): ")
if respuesta=="Positiva" or respuesta.lower()=="c":
    print("Respuesta acertada")
    puntos = puntos + 10
else:
    print("Has fallado")
    puntos = puntos - 5
print("Puntos totales: ",puntos)