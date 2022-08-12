# Ej.8: Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
# 7510, 7960, 76180, 800, 4100
# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. 
# Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.

def valorMinimo (valores):
    flag = 0
    valorMin=0
    for valor in valores: 
        if flag==0:
            valorMin=valor;
            flag=1
        else:
            if valor<valorMin:
                valorMin=valor
        
    return valorMin


historial4 = (7510, 7960, 76180, 800, 4100)
valorMini= valorMinimo(historial4)

print(f"El valor minimo de atencion gastado en Olivia fue:{valorMini}")

