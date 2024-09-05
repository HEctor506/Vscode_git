import random


# def primer_ejercicio():
#     suma = 0
#     for i in range(10):
#         user = int(input(f"Num {i}: "))
#         suma+=user
#     return suma/10

# promedio = primer_ejercicio()
# print(promedio)

# def segundo_ejercicio():
#     pares = 0
#     impares = 0
#     for i in range(500):  
#         aleatorio = random.randint(50,100)
#         if aleatorio % 2 == 0:
#             pares+=1
#         else:
#             impares+=1
#     print("Pares generados: ", pares)
#     print("Impares generados: ", impares)
    
# segundo_ejercicio()

"""Genere 2 arreglos paralelos que representen las sucursales de una empresa
    y sus ventas. Existen 25 sucursales en la empresa. Presente el promedio de
    ventas, así como las sucursales con ventas mayores al promedio.
    """

def tercer_ejercicio():
    # Crear arreglos para sucursales y ventas
    sucursales = []
    ventas = []

    # Inicializar las 25 sucursales y generar ventas aleatorias
    for i in range(25):
        sucursales.append("Sucursal " + str(i + 1))
        ventas.append(random.randint(1000, 10000))  # Ventas entre 1000 y 10000 unidades monetarias
    
    # Calcular el promedio de ventas
    promedio_ventas = sum(ventas) // len(ventas)
    
    # Presentar el promedio de ventas
    print(f"Promedio de ventas: {promedio_ventas}")
    
    # Sucursales con ventas mayores al promedio
    print("\nSucursales con ventas mayores al promedio:")
    for i in range(len(sucursales)):
        if ventas[i] > promedio_ventas:
            print(f"{sucursales[i]} - Ventas: {ventas[i]}")
    
tercer_ejercicio()
