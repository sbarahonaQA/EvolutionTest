package StepDefinitions;

import Functions.SeleniumFunctions;
import Functions.SeleniumFunctionsEvoWave;
import cucumber.api.java.es.*;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class StepDefinitionsEvoWave {
    WebDriver driver;
    SeleniumFunctionsEvoWave functions = new SeleniumFunctionsEvoWave();

    /******** Log Attribute ********/
    Logger log = Logger.getLogger(StepDefinitionsEvoWave.class);
    public StepDefinitionsEvoWave() {
        driver = Hooks.driver;
    }

    /******** Interacción con browser ********/

    @Dado("^que carga EvolutionWave")
    public void queCargaEvolutionWave() throws IOException {
        String sitioPruebas = functions.readProperties("servidor") + functions.readProperties("instanciaEvoWave");
        log.info("Cargando URL: " + sitioPruebas);
        driver.get(sitioPruebas);
    }

    @Entonces("^Validar datos:")
    public void validarDatos(List<List<String>> table) throws Exception {
        functions.validarDatos(table);
    }


}
