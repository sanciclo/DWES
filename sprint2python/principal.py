from factorial import func_factorial
from factorial2 import func_factorial2


print("Calcula el factorial")
print("a) Con recursividad.")
print("b) Sin recursividad.")
op=input("Elija una opción: a / b: ")

if op.lower() == "a":
    num = int(input("Introduzca un número mayor que 0: "))
    if num < 0:
        print("Número negativo. Introduzca un número mayor que 0:")
    else:
        print("El factorial de ",num," es: ",func_factorial(num))
elif op.lower() == "b":
    num = int(input("Introduzca un número mayor que 0: "))
    if num < 0:
        print("Número negativo. Introduzca un número mayor que 0:")
    else:
        print("El factorial de ",num," es: ",func_factorial2(num))
else:
    print("La opción no es correcta. Elija a o b")