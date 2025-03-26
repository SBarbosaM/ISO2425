import os
import cpuinfo as cpu

while True:
    print("Opción 1: Mostrar información del sistema")
    print("Opción 2: Comprobación de usuario")
    print("Opción 3: Comprobación de directorio")
    print("Opción 4: Salir")
    opcion = int(input("Elige una opción: "))
    if opcion == 1:
        print(os.uname(), cpu.get_cpu_info()["brand_raw"])
    elif opcion == 2:
        fich = open("/etc/passwd", "r")
        contenido = fich.readlines()
        usuario = input("Introduce el nombre de usuario: ")
        for i in contenido:
            if usuario in i:
                print("El usuario existe")
                break
            else:
                print("El usuario no existe, creando...")
                os.system("sudo useradd " + usuario)
                break
    elif opcion == 3:
        directorio = input("Introduce el nombre del directorio: ")
        if os.path.exists(directorio):
            print("Existe")
        else:
            print("No existe")
    elif opcion == 4:
        print("Saliendo...")
        break
