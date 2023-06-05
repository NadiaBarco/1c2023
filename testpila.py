
#pilas no de puede iterar ni imprimmir 
files= open("archivo.txt","r")

lineas_text=files.readlines()

print("----------------------")



#for palabara in lineas_text_salto:

print(lineas_text)

print(len(lineas_text))



#print(existe_palabras("elit"))

#def cantidad_de_apraciones(file ,palabra) ->int:

def existe_palabras(palabra) ->bool:
 files= open("archivo.txt","r")
 lineas_text=files.readlines()
 for i in range (lineas_text):

  return True

def existe_palabra2(files) ->bool:
 files= open("archivo.txt","r")
 lineas_text=files.readlines()
 palabra="Lorem"
 res:bool= lineas_text.count(palabra) >=1 
 return res

existe_palabra2("archivo.txt")


 
#def clonar_sin_comentar(file)
 
#for palabra in files:


def generar_un_archivo_recursivo(file):
 file= open("archivo.txt","r")
 reverted_file= open("archivo.txt","r")
 lines= file.readlines()
 for i in range(len(lines),-1,1):
  reverted_file.write(lines[i])
  file.close()
  reverted_file.close()


print(generar_un_archivo_recursivo("archivo.txt"))


def escribir(file_name,name):
 file= open("archivo.txt","r")
 line= file.readline()
 line= file.readlines()
 



"""
def agregar_frase_al_inicio_del_archivo(file_name,frase):
 files= open("archivo.txt","r")
 line=[file "/n"]
"""


#####pila
from queue import LifoQueue as Pila
p=Pila()
p.put(1) #apilar
elemento=p.get

 

    
