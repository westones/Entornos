Algoritmo Ordenar_Nombres
    // Declaración de variables
    Definir nombres Como Cadena
    Definir i, j Como Entero
    Definir aux Como Cadena
    Dimension nombres[5]
    
    // ===== ENTRADA DE DATOS =====
    Escribir "=== ORDENAR 5 NOMBRES ALFABÉTICAMENTE ==="
    Escribir ""
    Escribir "Ingrese 5 nombres:"
    Escribir ""
    
    // Pedir los 5 nombres
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir "Nombre ", i, ":"
        Leer nombres[i]
    FinPara
    
    // ===== ORDENAMIENTO BURBUJA (MAYOR A MENOR) =====
    // Ordenar de forma descendente (de la Z a la A)
    Para i <- 1 Hasta 4 Con Paso 1 Hacer
        Para j <- i+1 Hasta 5 Con Paso 1 Hacer
            // Si el nombre en posición i es menor que el de posición j, intercambiar
            Si nombres[i] < nombres[j] Entonces
                aux <- nombres[i]
                nombres[i] <- nombres[j]
                nombres[j] <- aux
            FinSi
        FinPara
    FinPara
    
    // ===== MOSTRAR RESULTADOS =====
    Escribir ""
    Escribir "=========================================="
    Escribir "Nombres ordenados de MAYOR a MENOR (Z-A):"
    Escribir "=========================================="
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir i, ". ", nombres[i]
    FinPara
    
FinAlgoritmo