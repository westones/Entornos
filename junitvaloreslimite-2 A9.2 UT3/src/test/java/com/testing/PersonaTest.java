package com.testing;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import org.junit.Test;

public class PersonaTest {

    // CE1 - Valor límite: edad = -1 → debe lanzar excepción (inválido)
    @Test(expected = IllegalArgumentException.class)
    public void test1() {
        Persona p = new Persona(-1);
        p.isMayorDeEdad();
    }

    // CE2 - Valor límite inferior válido: edad = 0 → false (menor de edad)
    @Test
    public void test2() {
        Persona p = new Persona(0);
        assertFalse(p.isMayorDeEdad());
    }

    // CE2 - Valor límite superior de CE2: edad = 17 → false (menor de edad)
    @Test
    public void test3() {
        Persona p = new Persona(17);
        assertFalse(p.isMayorDeEdad());
    }

    // CE3 - Valor límite inferior de CE3: edad = 18 → true (mayor de edad)
    @Test
    public void test4() {
        Persona p = new Persona(18);
        assertTrue(p.isMayorDeEdad());
    }

    // CE3 - Valor representativo alto: edad = 100 → true (mayor de edad)
    @Test
    public void test5() {
        Persona p = new Persona(100);
        assertTrue(p.isMayorDeEdad());
    }

    // CE1 - Valor límite negativo extremo: edad = -100 → excepción
    @Test(expected = IllegalArgumentException.class)
    public void test6() {
        Persona p = new Persona(-100);
        p.isMayorDeEdad();
    }
}