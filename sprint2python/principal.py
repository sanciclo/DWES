from factorial import func_factorial

num = int(input("Introduzca un número mayor que 0: "))
if num < 0:
    print("Número negativo. Introduzca un número mayor que 0:")
else:
    print("El factorial de ",num," es: ",func_factorial(num))