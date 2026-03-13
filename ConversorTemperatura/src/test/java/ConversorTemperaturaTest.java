
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import com.testing.conversortemperatura.*;

public class ConversorTemperaturaTest {

    private final Conversortemperatura conversor = new Conversortemperatura();

    @Test
    public void testCelsiusAFahrenheit() {
        assertEquals(32.0,  conversor.celsiusAFahrenheit(0),   0.001, "0 C = 32 F");
        assertEquals(212.0, conversor.celsiusAFahrenheit(100), 0.001, "100 C = 212 F");
    }

    @Test
    public void testFahrenheitACelsius() {
        assertEquals(0.0,   conversor.fahrenheitACelsius(32),  0.001, "32 F = 0 C");
        assertEquals(100.0, conversor.fahrenheitACelsius(212), 0.001, "212 F = 100 C");
    }
}
