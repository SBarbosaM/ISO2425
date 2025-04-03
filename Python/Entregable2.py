import os

ficheros, directorios = [], []
with open("rutas.txt", 'r') as file:
    for ruta in file:
        (ficheros if os.path.isfile(ruta) else directorios).append(ruta)

while True:
    print("A: Eliminar | B: Info Dir | C: Copiar | D: Listar | E: Salir")
    opcion = input("Opción: ")

    if opcion == 'A':
        nombre = input("Fichero a eliminar: ")
        if os.path.isfile(nombre):
            os.remove(nombre)
            print("Eliminado.")
        else:
            print("No existe.")

    elif opcion == 'B':
        nombre = input("Directorio: ")
        if os.path.isdir(nombre):
            print("Contenido:", os.listdir(nombre))
        else:
            print("No existe.")

    elif opcion == 'C':
        origen = input("Fichero origen: ")
        destino = input("Destino: ")
        if os.path.isfile(origen):
            with open(origen, 'rb') as f_origen, open(destino, 'wb') as f_destino:
                f_destino.write(f_origen.read())
            print("Copiado.")
        else:
            print("No existe.")

    elif opcion == 'D':
        if input("Ver (F: Ficheros, D: Directorios): ") == 'F':
            print(ficheros)
        else:
            print(directorios)

    elif opcion == 'E':
        break

    else:
        print("Opción inválida.")
