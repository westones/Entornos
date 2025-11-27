Algoritmo Multiplos_y_Corona
    // Declaración de variables
    Definir num, i Como Entero
    Definir radio1, radio2, area Como Real
    
    // ===== PARTE 1: MÚLTIPLOS DE 3 =====
    Escribir "=== MÚLTIPLOS DE 3 DESDE UN NÚMERO DADO ==="
    Escribir ""
    
    // Solicitar número entre 5 y 10
    Repetir
        Escribir "Ingrese un número entre 5 y 10:"
        Leer num
        Si num < 5 O num > 10 Entonces
            Escribir "Error: El número debe estar entre 5 y 10"
        FinSi
    Hasta Que num >= 5 Y num <= 10
    
    // Mostrar múltiplos de 3 desde num hasta 50
    Escribir ""
    Escribir "Múltiplos de 3 desde ", num, " hasta 50:"
    Para i <- num Hasta 50 Con Paso 1 Hacer
        Si i MOD 3 = 0 Entonces
            Escribir i
        FinSi
    FinPara
    
    Escribir ""
    Escribir "=========================================="
    Escribir ""
    
    // ===== PARTE 2: ÁREA DE CORONA CIRCULAR =====
    Escribir "=== CÁLCULO DEL ÁREA DE UNA CORONA CIRCULAR ==="
    Escribir ""
    
    // Solicitar los dos radios
    Repetir
        Escribir "Ingrese el radio menor (radio1):"
        Leer radio1
        Si radio1 <= 0 Entonces
            Escribir "Error: El radio debe ser mayor que 0"
        FinSi
    Hasta Que radio1 > 0
    
    Repetir
        Escribir "Ingrese el radio mayor (radio2):"
        Leer radio2
        Si radio2 <= radio1 Entonces
            Escribir "Error: El radio mayor debe ser mayor que el radio menor"
        FinSi
    Hasta Que radio2 > radio1
    
    // Calcular área de la corona circular
    // Fórmula: A = ?(R² - r²)
    area <- PI * (radio2^2 - radio1^2)
    
    // Mostrar resultado
    Escribir ""
    Escribir "El área de la corona circular es: ", area
    
FinAlgoritmo