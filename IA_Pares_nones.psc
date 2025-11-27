Algoritmo ParesYNones
    // Declaración de variables
    Definir eleccionJugador Como Caracter
    Definir numeroJugador, numeroMaquina, suma Como Entero
    Definir jugadorEligePares Como Logico
    Definir ganador Como Caracter
    
    // Presentación del juego
    Escribir "=== JUEGO DE PARES Y NONES ==="
    Escribir ""
    
    // La máquina toma la iniciativa y elige primero
    numeroMaquina <- Azar(2)  // 0 = pares, 1 = nones
    
    Si numeroMaquina = 0 Entonces
        Escribir "La máquina eligió: PARES"
        Escribir "Tú juegas con: NONES"
        jugadorEligePares <- Falso
    SiNo
        Escribir "La máquina eligió: NONES"
        Escribir "Tú juegas con: PARES"
        jugadorEligePares <- Verdadero
    FinSi
    
    Escribir ""
    
    // El jugador elige su número
    Escribir Sin Saltar "Elige tu número (0-10): "
    Leer numeroJugador
    
    // La máquina elige su número
    numeroMaquina <- Azar(11)  // Genera número entre 0 y 10
    Escribir "La máquina eligió el número: ", numeroMaquina
    
    // Calcular la suma
    suma <- numeroJugador + numeroMaquina
    Escribir ""
    Escribir "Suma total: ", suma
    
    // Determinar quién gana
    Si suma MOD 2 = 0 Entonces
        Escribir "La suma es PAR"
        Si jugadorEligePares Entonces
            ganador <- "JUGADOR"
        SiNo
            ganador <- "MÁQUINA"
        FinSi
    SiNo
        Escribir "La suma es IMPAR (NONES)"
        Si jugadorEligePares Entonces
            ganador <- "MÁQUINA"
        SiNo
            ganador <- "JUGADOR"
        FinSi
    FinSi
    
    // Mostrar resultado final
    Escribir ""
    Escribir "*** GANADOR: ", ganador, " ***"
    
FinAlgoritmo