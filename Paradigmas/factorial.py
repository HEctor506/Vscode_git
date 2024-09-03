#Paradigma imperativo

def factorial(n):
    #Calcula el factorial de un numero
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)
    
'''
opcion = input("Numero: ")
while not opcion == "0":
    print("\n0 para salir")
    opcion= input()
    print(f"Numero Factorial: {factorial(int(opcion))}")
'''  
    
#Paradigma funcional en python

# def factorial2(n):
#     return reduce(lambda x, y: x*y, range(1, n+1))

reduce = lambda x:1 if x == 0 else x*reduce(x-1)
print(reduce(int(input("num: "))))
