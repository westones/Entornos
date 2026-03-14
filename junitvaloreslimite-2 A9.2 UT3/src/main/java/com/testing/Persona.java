package com.testing;

public class Persona {
    private int edad;

    public Persona(int edad) {
        if (edad < 0) {
            throw new IllegalArgumentException("La edad no puede ser negativa");
        }
        this.edad = edad;
    }

    public boolean isMayorDeEdad() {
        return edad >= 18;
    }
}