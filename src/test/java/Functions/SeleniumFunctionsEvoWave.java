package Functions;

import StepDefinitions.Hooks;
import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import utils.AggregatedAsserts;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class SeleniumFunctionsEvoWave {
    static WebDriver driver;
    public static Properties prop = new Properties();
    public static InputStream in = SeleniumFunctionsEvoWave.class.getResourceAsStream("../test.properties");
    public static Properties SegAcceso = new Properties();
    public static InputStream inSegAcceso = SeleniumFunctionsEvoWave.class.getResourceAsStream("../usuarios.properties");
    public static InputStream inSegAccesoIDS = SeleniumFunctionsEvoWave.class.getResourceAsStream("../usuariosIDS.properties");
    public static Map<String, String> ScenaryData = new HashMap<>();
    private final AggregatedAsserts aggregatedAsserts = new AggregatedAsserts();
    private String language;

    public SeleniumFunctionsEvoWave() {
        driver = Hooks.driver;
    }
    public String ElementText = "";
    public static final int EXPLICIT_TIMEOUT = 15;
    public static final int INTENTOS_MAX = 15;

    public String readProperties(String property) throws IOException {
        prop.load(in);
        return prop.getProperty(property);
    }

    /******** Log Attribute ********/
    private static final Logger log = Logger.getLogger(SeleniumFunctionsEvoWave.class);
    public static String FileName = "";
    public static String PagesFilePath = "src/test/resources/Pages/";

    public static String GetFieldBy = "";
    public static String ValueToFind = "";
    public static String FieldType = "";

    /******** JSON Manipulation ********/

    public static Object readJson() throws Exception {
        InputStreamReader isr = new InputStreamReader(new FileInputStream(PagesFilePath + FileName), StandardCharsets.UTF_8);
        try {
            JSONParser jsonParser = new JSONParser();
            return jsonParser.parse(isr);
        } catch (FileNotFoundException e) {
            log.error("ReadEntity: No existe el archivo " + FileName);
            return null;
        } catch (NullPointerException e) {
            log.error("ReadEntity: No existe el archivo " + FileName);
            throw new IllegalStateException("ReadEntity: No existe el archivo " + FileName, e);
        }
    }

    public static JSONObject readEntity(String element) throws Exception {
        JSONObject Entity;

        JSONObject jsonObject = (JSONObject) readJson();
        assert jsonObject != null;
        Entity = (JSONObject) jsonObject.get(element);
        if(Entity == null) {
            throw new Exception("Elemento " + element + " no está definido como elemento de la pagina " + FileName);
        }
        log.info(Entity.toJSONString());
        return Entity;
    }

    /******** Element manipulation ********/

    public static By getCompleteElement(String element) throws Exception {
        By result = null;

        JSONObject Entity = readEntity(element);
        GetFieldBy = (String) Entity.get("GetFieldBy");
        ValueToFind = (String) Entity.get("ValueToFind");
        FieldType = Entity.get("FieldType") != null ? (String) Entity.get("FieldType") : "Texto";

        if ("className".equalsIgnoreCase(GetFieldBy)) {
            result = By.className(ValueToFind);
        } else if ("cssSelector".equalsIgnoreCase(GetFieldBy)) {
            result = By.cssSelector(ValueToFind);
        } else if ("id".equalsIgnoreCase(GetFieldBy)) {
            result = By.id(ValueToFind);
        } else if ("linkText".equalsIgnoreCase(GetFieldBy)) {
            result = By.linkText(ValueToFind);
        } else if ("name".equalsIgnoreCase(GetFieldBy)) {
            result = By.name(ValueToFind);
        } else if ("partialLinkText".equalsIgnoreCase(GetFieldBy)) {
            result = By.partialLinkText(ValueToFind);
        } else if ("tagName".equalsIgnoreCase(GetFieldBy)) {
            result = By.tagName(ValueToFind);
        } else if ("xpath".equalsIgnoreCase(GetFieldBy)) {
            result = By.xpath(ValueToFind);
        }
        return result;
    }

    public String getTextElement(String element) throws Exception {
        By SeleniumElement = SeleniumFunctionsEvoWave.getCompleteElement(element);
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        wait.until(ExpectedConditions.presenceOfElementLocated(SeleniumElement));
        log.info(String.format("Esperando el elemento: %s", element));
        ElementText = driver.findElement(SeleniumElement).getText();
        if(ElementText.isEmpty())
            ElementText = driver.findElement(SeleniumElement).getAttribute("value");

        String tipo = driver.findElement(SeleniumElement).getAttribute("type");

        //Validacion para checkbox
        if(tipo != null && tipo.equalsIgnoreCase("checkbox")) {
            ElementText = String.valueOf(driver.findElement(SeleniumElement).isSelected());
        }

        //Validacion para radio
        if(tipo != null && tipo.equalsIgnoreCase("radio")) {
            List<WebElement> radio = driver.findElements(SeleniumElement);
            for (WebElement webElement : radio) {
                if (webElement.isSelected()) {
                    ElementText = webElement.getAttribute("value");
                    break;
                }
            }
        }
        return ElementText;
    }

    public void iSetElementWithText(String element, String text) throws Exception {
        By SeleniumElement = SeleniumFunctionsEvoWave.getCompleteElement(element);
        driver.findElement(SeleniumElement).clear();
        driver.findElement(SeleniumElement).sendKeys(text);
        log.info(String.format("Al elemento %s se le pone este texto %s", element, text));
    }

    /******** Asserts ********/

    public void checkPartialTextElementNotPresent(String elemento,String texto) throws Exception {
        ElementText = getTextElement(elemento);
        aggregatedAsserts.assertFalse("Texto NO esta presente en elemento: " + elemento + " - texto: " + texto, !ElementText.toUpperCase().contains(texto.toUpperCase()));
    }

    public void checkPartialTextElementPresent(String elemento,String texto) throws Exception {
        ElementText = getTextElement(elemento);
        log.info("Buscando texto: '" + texto + "' en texto del elemento '" + ElementText + "'");
        aggregatedAsserts.assertTrue("Texto NO esta presente en elemento: " + elemento + " - texto: " + texto, ElementText.toUpperCase().contains(texto.toUpperCase()));
        aggregatedAsserts.processAllAssertions();
    }

    public void checkTextElementPresent(String elemento,String texto) throws Exception {
        ElementText = getTextElement(elemento);
        log.info("Verificando texto: '" + texto + "' con texto del elemento '" + ElementText + "'");
        aggregatedAsserts.assertTrue("Texto del elemento: " + elemento + " - NO es igual a texto: " + texto, ElementText.equals(texto));
        aggregatedAsserts.processAllAssertions();
    }

    public void checkTextElementNotPresent(String elemento,String texto) throws Exception {
        ElementText = getTextElement(elemento);
        log.info("Verificando texto: '" + texto + "' sea diferente texto del elemento '" + ElementText + "'");
        aggregatedAsserts.assertTrue("Texto del elemento: " + elemento + " - NO es igual a texto: " + texto, !ElementText.equals(texto));
        aggregatedAsserts.processAllAssertions();
    }

    /******** Login ********/

    public void iSetLoginCredentials(String username) throws Exception {
        iSetElementWithText("Usuario", username);
        iSetElementWithText("Contrasenia", SeleniumFunctionsEvoWave.getPassword(username));
        iClicInElement("BotonIniciarSesion");

        log.info(String.format("Iniciando sesion con usuario %s", username));
    }

    public void iSetIDSLoginCredentials(String username) throws Exception {
        iSetElementWithText("UsuarioIDS", username);
        iSetElementWithText("ContraseniaIDS", SeleniumFunctionsEvoWave.getPassword(username));
        iClicInElement("BotonIniciarSesionIDS");
        log.info(String.format("Iniciando sesion en IDS con usuario %s", username));
    }

    /******** Click ********/

    public void iClicInElement(String element) throws Exception {
        By SeleniumElement = SeleniumFunctionsEvoWave.getCompleteElement(element);
        WebDriverWait w = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        w.until(ExpectedConditions.elementToBeClickable(SeleniumElement));
        try {
            driver.findElement(SeleniumElement).click();
        }
        catch(StaleElementReferenceException ex)
        {
            driver.findElement(SeleniumElement).click();
        }
        log.info("Click al elemento: " + element);
    }

    /******** Wait until expected conditions has met ********/

    public boolean isElementDisplayed(String element) throws Exception {
        boolean isDisplayed;
        try {
            By SeleniumElement = SeleniumFunctionsEvoWave.getCompleteElement(element);
            log.info(String.format("Esperando elemento: %s", element));
            WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
            isDisplayed = wait.until(ExpectedConditions.presenceOfElementLocated(SeleniumElement)).isDisplayed();
        }catch (NoSuchElementException | TimeoutException e){
            isDisplayed = false;
            log.info(e);
        }
        log.info(String.format("%s visbilidad es: %s", element, isDisplayed));
        return isDisplayed;
    }

    public void waitForElementPresent(String element) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        WebDriverWait w = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        log.info("Esperando que el elemento: "+element + " esté presente");
        w.until(ExpectedConditions.presenceOfElementLocated(SeleniumElement));
    }

    public void validarDatos(List<List<String>> rows) throws Exception {
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        wait.until(ExpectedConditions.visibilityOfElementLocated(SeleniumFunctions.getCompleteElement("Tabla")));
        By SeleniumElement = SeleniumFunctions.getCompleteElement("Tabla");
        WebElement tabla = driver.findElement(SeleniumElement);
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        boolean registroExiste;

        for (List<String> columns : rows) {

            registroExiste = false;
            int posicionColumna = 0;

            List<WebElement> encabezados = tabla.findElements(By.tagName("th"));

            //Se busca la posicion del dato de columna propocionado
            for (WebElement ignored : encabezados) {
                if (!encabezados.get(posicionColumna).getText().equalsIgnoreCase(columns.get(0).trim()))
                    posicionColumna++;
                else {
                    registroExiste = true;
                    break;
                }
            }
            if (!registroExiste) {
                aggregatedAsserts.fail("Columna \"" + columns.get(0).trim() + "\" no encontrada");
                aggregatedAsserts.processAllAssertions();
                return;
            }

            for (WebElement fila : filas) {
                List<WebElement> columnas = fila.findElements(By.tagName("td"));

                //Si columnas es igual a cero es la fila con los encabezados
                if (columnas.size() == 0) {
                    continue;
                }

                if (columnas.get(posicionColumna).getText().equalsIgnoreCase(columns.get(1).trim())) {
                    break;
                }
                else
                    aggregatedAsserts.fail("Texto NO coinciden - Sistema: " + columnas.get(posicionColumna).getText() + " - Prueba: " + columns.get(1).trim());
            }
        }
        aggregatedAsserts.processAllAssertions();
    }

    public static String getPassword(String usuario) throws Exception {
        if(prop.getProperty("IDS").equalsIgnoreCase("yes") || prop.getProperty("IDS").equalsIgnoreCase("si"))
            SegAcceso.load(inSegAccesoIDS);
        else
            SegAcceso.load(inSegAcceso);
        return SegAcceso.getProperty(usuario);
    }

}