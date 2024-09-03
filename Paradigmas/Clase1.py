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

# reduce = lambda x:1 if x == 0 else x*reduce(x-1)
# print(reduce(int(input("num: "))))

#POO
class CuentaBancaria:
    """Representa una cuenta bancaria"""
    def __init__(self, nombre, saldo):    # <- Este es mi constructor
        """Inicializa la cuenta bancaria"""
        self.nombre = nombre
        self.saldo = saldo
        
    def depositar(self, cantidad):
        """Deposita una cantidad en la cuenta"""
        self.saldo+=cantidad 
        print("Deposito exisoto")
    
    def retirar(self, cantidad):
        if cantidad > self.saldo:
            return ("Saldo Insuficiente, pruebe con ",self.saldo)
        else:
            self.saldo -=cantidad
            print("Retiro exitoso")
    
    def __str__(self):
        return f"Cuenta bancaria de {self.nombre}. saldo: {self.saldo}"

cuenta1 = CuentaBancaria("Hector", 100)
cuenta2 = CuentaBancaria("Alexandra", 950)
cuenta3 = CuentaBancaria("Suarez", 8700)

print(cuenta1)
print(cuenta2)
cuenta1.depositar(420)

print(cuenta1)
cuenta1.retirar(500)
print(cuenta1)
        
        