// ============================================
// EJERCICIO: MENÚ CON FUNCIONES Y ESTRUCTURA SEGÚN
// Estudiante: 1º DAW
// ============================================

// FUNCIÓN 1: Juego de adivinar número
Funcion JuegoAdivinaNumero
    Definir numeroSecreto, intento, intentos Como Entero
    numeroSecreto <- Aleatorio(1, 100)
    intentos <- 0
    
    Escribir "=== JUEGO: ADIVINA EL NÚMERO ==="
    Escribir "He pensado un número entre 1 y 100"
    
    Repetir
        Escribir Sin Saltar "Introduce tu intento: "
        Leer intento
        intentos <- intentos + 1
        
        Si intento < numeroSecreto Entonces
            Escribir "El número es MAYOR"
        SiNo
            Si intento > numeroSecreto Entonces
                Escribir "El número es MENOR"
            FinSi
        FinSi
    Hasta Que intento = numeroSecreto
    
    Escribir "¡FELICIDADES! Adivinaste en ", intentos, " intentos"
FinFuncion

// FUNCIÓN 2: Verificar si 3 segmentos forman un triángulo
// Teorema: La suma de dos lados debe ser mayor que el tercer lado
Funcion esTriangulo <- VerificarTriangulo(a, b, c)
    Definir esTriangulo Como Logico
    esTriangulo <- (a + b > c) Y (a + c > b) Y (b + c > a)
FinFuncion

// FUNCIÓN 3: Verificar triángulo y mostrar tipo
Funcion OpcionTriangulo
    Definir lado1, lado2, lado3 Como Real
    
    Escribir "=== VERIFICADOR DE TRIÁNGULOS ==="
    Escribir Sin Saltar "Ingresa el primer segmento: "
    Leer lado1
    Escribir Sin Saltar "Ingresa el segundo segmento: "
    Leer lado2
    Escribir Sin Saltar "Ingresa el tercer segmento: "
    Leer lado3
    
    Si VerificarTriangulo(lado1, lado2, lado3) Entonces
        Escribir "? SÍ se puede formar un triángulo"
        
        // Determinar tipo de triángulo
        Si lado1 = lado2 Y lado2 = lado3 Entonces
            Escribir "  Tipo: EQUILÁTERO (3 lados iguales)"
        SiNo
            Si lado1 = lado2 O lado2 = lado3 O lado1 = lado3 Entonces
                Escribir "  Tipo: ISÓSCELES (2 lados iguales)"
            SiNo
                Escribir "  Tipo: ESCALENO (lados diferentes)"
            FinSi
        FinSi
    SiNo
        Escribir "? NO se puede formar un triángulo con esos segmentos"
    FinSi
FinFuncion

// FUNCIÓN 4: Calcular media de datos
Funcion CalcularMedia
    Definir n, i Como Entero
    Definir numero, suma, media Como Real
    
    Escribir "=== CALCULADORA DE MEDIA ==="
    Escribir Sin Saltar "¿Cuántos números deseas ingresar? "
    Leer n
    
    Si n <= 0 Entonces
        Escribir "Error: Debes ingresar al menos un número"
    SiNo
        suma <- 0
        Para i <- 1 Hasta n Hacer
            Escribir Sin Saltar "Número ", i, ": "
            Leer numero
            suma <- suma + numero
        FinPara
        
        media <- suma / n
        Escribir "La media es: ", media
    FinSi
FinFuncion

// ============================================
// ALGORITMO PRINCIPAL
// ============================================
Algoritmo MenuPrincipal
    Definir opcion Como Entero
    Definir continuar Como Caracter
    
    Repetir
        // Mostrar menú
        Escribir ""
        Escribir "??????????????????????????????????????????"
        Escribir "?       MENÚ PRINCIPAL - 1º DAW         ?"
        Escribir "??????????????????????????????????????????"
        Escribir "1. Juego: Adivina el número"
        Escribir "2. Verificar si 3 segmentos forman triángulo"
        Escribir "3. Calcular media de números"
        Escribir "4. Salir"
        Escribir Sin Saltar "Elige una opción: "
        Leer opcion
        
        // Estructura SEGÚN para manejar opciones
        Segun opcion Hacer
            1:
                JuegoAdivinaNumero()
            2:
                OpcionTriangulo()
            3:
                CalcularMedia()
            4:
                Escribir "¡Hasta pronto! Saliendo del programa..."
            De Otro Modo:
                Escribir "? Opción inválida. Elige entre 1 y 4"
        FinSegun
        
        Si opcion <> 4 Entonces
            Escribir ""
            Escribir Sin Saltar "¿Deseas volver al menú? (S/N): "
            Leer continuar
        FinSi
        
    Hasta Que opcion = 4 O (continuar <> "S" Y continuar <> "s")
    
FinAlgoritmo
