from factorial import func_factorial
from factorial2 import func_factorial2
import time

print("Calcula el factorial")
print("a) Con recursividad.")
print("b) Sin recursividad.")
op=input("Elija una opción: a / b): ")

if op.lower() == "a":
    num = int(input("Introduzca un número mayor que 0: "))
    if num < 0:
        print("Número negativo. Introduzca un número mayor que 0: ")
    else:
        start_time = time.time()
        print("El factorial de ",num," es: ",func_factorial(num))
        end_time = time.time()
        elapsed_time = end_time - start_time
        print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
elif op.lower() == "b":
    num = int(input("Introduzca un número mayor que 0: "))
    if num < 0:
        print("Número negativo. Introduzca un número mayor que 0: ")
    else:
        start_time = time.time()
        print("El factorial de ",num," es: ",func_factorial2(num))
        end_time = time.time()
        elapsed_time = end_time - start_time
        print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
else:
    print("La opción no es correcta. Elija a o b")

    