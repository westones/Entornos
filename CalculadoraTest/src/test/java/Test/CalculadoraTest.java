package Test;

import com.testing.testcalculadora.Testcalculadora;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CalculadoraTest {

    private final Testcalculadora calculadora = new Testcalculadora();

    @Test
    public void testSumar() {
        assertEquals(5, calculadora.sumar(2, 3), "La suma de 2 y 3 deberia ser 5.");
    }

    @Test
    public void testRestar() {
        assertEquals(1, calculadora.restar(3, 2), "La resta de 3 y 2 deberia ser 1.");
    }

    @Test
    public void testMultiplicar() {
        assertEquals(6, calculadora.multiplicar(2, 3), "La multiplicacion deberia ser 6.");
    }

    @Test
    public void testDividir() {
        assertEquals(2, calculadora.dividir(6, 3), "La division de 6 entre 3 deberia ser 2.");
    }

    @Test
    public void testDividirPorCero() {
        Exception ex = assertThrows(IllegalArgumentException.class, () -> {
            calculadora.dividir(6, 0);
        });
        assertEquals("No se puede dividir entre cero.", ex.getMessage());
    }
}
