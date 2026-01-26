import os
os.system("cls" if os.name == "nt" else "clear")
seguir = "si"
while (seguir == "si"):
    nombre = input("Ingrese nombre:  ")
    apellido = input("ingrese apellido:  ")
    print(f"hola nombre {nombre} de apellido {apellido}")
    seguir = input("Desea continuar S/N: ")
    verificar = "si" if (seguir == "si") else "si" if (seguir == "s") else "si" if (seguir == "SI") else "si" if (seguir == "S") else "no" 
    if verificar == "si":
        seguir="si"
        continue
    else:
        seguir="no"
        break
print('Adios, hasta la proxima Ariel, suerte Uñate')