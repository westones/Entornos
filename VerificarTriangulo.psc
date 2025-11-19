Algoritmo VerificarTriangulo
    Definir a, b, c como número
    Definir esTriangulo como lógico
	
    Escribir "Ingrese la longitud del lado a:"
    Leer a
    Escribir "Ingrese la longitud del lado b:"
    Leer b
    Escribir "Ingrese la longitud del lado c:"
    Leer c
	
    esTriangulo <- Falso
	
    Si (a + b > c) Y (a + c > b) Y (b + c > a) Entonces
        esTriangulo <- Verdadero
    FinSi
	
    Si esTriangulo Entonces
        Escribir "Los lados forman un triángulo."
    SiNo
        Escribir "Los lados no forman un triángulo."
    FinSi
FinAlgoritmo
