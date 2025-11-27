Algoritmo TrianguloValido
    // Declaración de variables
    Definir seg1, seg2, seg3 Como Real
    Definir puedeFormarTriangulo Como Logico
    
    // Entrada de datos
    Escribir "=== VERIFICADOR DE TRIÁNGULOS ==="
    Escribir Sin Saltar "Ingrese la longitud del segmento 1: "
    Leer seg1
    Escribir Sin Saltar "Ingrese la longitud del segmento 2: "
    Leer seg2
    Escribir Sin Saltar "Ingrese la longitud del segmento 3: "
    Leer seg3
    
    // Verificar desigualdad triangular
    // La suma de dos lados debe ser mayor que el tercero
    puedeFormarTriangulo <- (seg1 + seg2 > seg3) Y (seg1 + seg3 > seg2) Y (seg2 + seg3 > seg1)
    
    // Salida de resultados
    Si puedeFormarTriangulo Entonces
        Escribir ""
        Escribir "? SÍ se puede formar un triángulo"
        
        // Verificar si es rectángulo usando el Teorema de Pitágoras
        // Comprobamos las tres posibles combinaciones
        Si (seg1^2 + seg2^2 = seg3^2) O (seg1^2 + seg3^2 = seg2^2) O (seg2^2 + seg3^2 = seg1^2) Entonces
            Escribir "? El triángulo ES RECTÁNGULO"
        SiNo
            Escribir "? El triángulo NO es rectángulo"
        FinSi
    SiNo
        Escribir ""
        Escribir "? NO se puede formar un triángulo con estos segmentos"
    FinSi
    
FinAlgoritmo