###ejercicio 1
from math import factorial
from readline import write_history_file


def raizDe2()-> str:
    print(round.x)

def imprimir_hola() -> str :
    print("hola")


##def imprimir_un_verso() -> str:
##  res: print()



def es_MultiploDeN (n:int , m:int ) -> bool:
    res : bool = n % m == 0
    return res

def alguno_es_0 (numero1:int, numero2:int) -> bool:
  res: bool = numero1 == 0 or numero2 ==0

def son_0 (numero1:int, numero2:int) -> bool:
  res: bool = numero1 == 0 and numero2 ==0

def es_largo_nombre(nombre: str ) -> bool :
    res : bool = len(nombre) >=3 and len(nombre) <=8

def factorial_de_dos(n:int) -> int:
    res : int = print(2)
    print(res)


##def es_MultiploDe(n :int , m: int ) -> bool:
    ##m != 0
##    res:bool = n % m == 0
##    return res

def imprime_pares_10_40():
    i: int = 10
    while i <= 40 :
        if es_MultiploDeN(i,2):
            print(i)
        i += 1

def imprime_pares_10_40alt():
    i: int = 10
    while i <= 40:
        print(i)
    i +=2

 
def imprimir_saludo(nombre: str ) -> str:
    res: str = print("hola " + nombre)
    return res






    