package Functions;

import StepDefinitions.Hooks;
import cucumber.api.Scenario;
import io.qameta.allure.Allure;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.log4j.Logger;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import utils.AggregatedAsserts;
import utils.DateValidator;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class SeleniumFunctions {
    static WebDriver driver;
    public static Properties prop = new Properties();
    public static InputStream in = SeleniumFunctions.class.getResourceAsStream("../test.properties");
    public static Properties SegAcceso = new Properties();
    public static InputStream inSegAcceso = SeleniumFunctions.class.getResourceAsStream("../usuarios.properties");
    public static InputStream inSegAccesoIDS = SeleniumFunctions.class.getResourceAsStream("../usuariosIDS.properties");
    public static Map<String, String> ScenaryData = new HashMap<>();
    private final AggregatedAsserts aggregatedAsserts = new AggregatedAsserts();
    private String language;

    public SeleniumFunctions() {
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
    private static final Logger log = Logger.getLogger(SeleniumFunctions.class);
    public static String FileName = "";
    public static String PagesFilePath = "src/test/resources/Pages/";

    public static String GetFieldBy = "";
    public static String ValueToFind = "";
    public static String FieldType = "";


    /******** Browser functions ********/

    public void zoomTillElementDisplay(String element) throws Exception{
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        WebElement html = driver.findElement(SeleniumElement);
        html.sendKeys(Keys.chord(Keys.CONTROL, "0"));
    }

    public void switchToFrame(String Frame) throws Exception {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(Frame);
        log.info("Cambiando de frame: " + Frame);
        driver.switchTo().frame(driver.findElement(SeleniumElement));
    }

    public void switchToParentFrame() {
        log.info("Cambiando al frame padre");
        driver.switchTo().parentFrame();
    }

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

    /******** Screnshots ********/

    public void screenShot(String TestCaptura) throws IOException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd-HHmm");
        String screenShotName = readProperties("ScreenShotPath") + "\\" + readProperties("browser") + "\\" + TestCaptura + "_(" + dateFormat.format(GregorianCalendar.getInstance().getTime()) + ")";
        File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        log.info("Captura de pantalla guardada como:" + screenShotName);
        FileUtils.copyFile(scrFile, new File(String.format("%s.png", screenShotName)));
    }

    public void attachScreenShot(){
        log.info("Adjuntando captura de pantalla");
        Allure.addAttachment("CapturaPantalla", new ByteArrayInputStream(((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES)));
    }

    /******** Alerts ********/

    public void acceptAlert(){
        try{
            WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
            Alert alert = wait.until(ExpectedConditions.alertIsPresent());
            alert.accept();
            log.info("Alerta aceptada exitosamente.");
        }catch(Throwable e){
            log.error("Error al esperar que apareciera alerta. "+e.getMessage());
        }
    }

    public void dismissAlert()
    {
        try{
            WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
            Alert alert = wait.until(ExpectedConditions.alertIsPresent());
            alert.dismiss();
            log.info("Alerta rechazada exitosamente.");
        }catch(Throwable e){
            log.error("Error al esperar que apareciera alerta. "+e.getMessage());
        }
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
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
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
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        driver.findElement(SeleniumElement).clear();
        driver.findElement(SeleniumElement).sendKeys(text);
        log.info(String.format("Al elemento %s se le pone este texto %s", element, text));
    }

    public void iSetElementWithKeyValue(String element, String key) throws Exception {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        boolean exist = ScenaryData.containsKey(key);
        if (exist){
            String text = ScenaryData.get(key);
            driver.findElement(SeleniumElement).sendKeys(text);
            log.info(String.format("Al elemento %s se le pone este texto %s", element, text));
        }else{
            aggregatedAsserts.assertTrue(String.format("The given key %s do not exist in Context", key), ScenaryData.containsKey(key));
        }
    }

    /******** Dropdowns ********/

    public void selectOptionDropdownByIndex(String element, int option) throws Exception {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        log.info(String.format("Esperando elemento: %s", element));

        Select opt = new Select(driver.findElement(SeleniumElement));
        log.info("Seleccionando: " + option + " por indice");
        opt.selectByIndex(option);
    }

    public void selectOptionDropdownByText(String element, String option) throws Exception {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        log.info(String.format("Esperando elemento: %s", element));

        Select opt = new Select(driver.findElement(SeleniumElement));
        log.info("Seleccionando: " + option + " por texto");
        opt.selectByVisibleText(option);
    }

    public void selectOptionDropdownByValue(String element, String option) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        log.info(String.format("Esperando elemento: %s", element));

        Select opt = new Select(driver.findElement(SeleniumElement));
        log.info("Seleccionando: " + option + " por valor");
        opt.selectByValue(option);
    }

    /******** Checkboxes ********/

    public void checkCheckbox(String element) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        boolean isChecked = driver.findElement(SeleniumElement).isSelected();
        if(!isChecked){
            log.info("Marcando elemento: " + element);
            driver.findElement(SeleniumElement).click();
        }
    }

    public void uncheckCheckbox(String element) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        boolean isChecked = driver.findElement(SeleniumElement).isSelected();
        if(isChecked){
            log.info("Desmarcando elemento: " + element);
            driver.findElement(SeleniumElement).click();
        }
    }

    /******** Scroll ********/

    public void scrollToElement(String element) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        JavascriptExecutor jse = (JavascriptExecutor)driver;
        log.info("Desplazandose al elemento: " + element);
        jse.executeScript("arguments[0].scrollIntoView();", driver.findElement(SeleniumElement));

    }

    public void scrollPage(String to)
    {
        JavascriptExecutor jse = (JavascriptExecutor)driver;
        if(to.equals("top")){
            log.info("Desplazandose al inicio de la pagina");
            jse.executeScript("scroll(0, -250);");

        }
        else if(to.equals("end")){
            log.info("Desplazandose al final de la pagina");
            jse.executeScript("scroll(0, 250);");
        }
    }

    /******** Javascript ********/

    public void clickJSElement(String element) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        JavascriptExecutor jse = (JavascriptExecutor)driver;
        log.info("Desplazandose al elemento: " + element);
        jse.executeScript("arguments[0].click()", driver.findElement(SeleniumElement));
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
        iSetElementWithText("Contrasenia", SeleniumFunctions.getPassword(username));
        iClicInElement("BotonIniciarSesion");

        log.info(String.format("Iniciando sesion con usuario %s", username));
    }

    public void iSetIDSLoginCredentials(String username) throws Exception {
        iSetElementWithText("UsuarioIDS", username);
        iSetElementWithText("ContraseniaIDS", SeleniumFunctions.getPassword(username));
        iClicInElement("BotonIniciarSesionIDS");
        log.info(String.format("Iniciando sesion en IDS con usuario %s", username));
    }

    /******** Click ********/

    public void doubleClick(String element) throws Exception
    {
        Actions action = new Actions(driver);
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        action.moveToElement(driver.findElement(SeleniumElement)).doubleClick().perform();
        log.info("Doble click al elemento: " + element);
    }

    public void iClicInElement(String element) throws Exception {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        WebDriverWait w = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        w.until(ExpectedConditions.elementToBeClickable(SeleniumElement));
        try {
            driver.findElement(SeleniumElement).click();
        }
        catch(org.openqa.selenium.StaleElementReferenceException ex)
        {
            driver.findElement(SeleniumElement).click();
        }
        log.info("Click al elemento: " + element);
    }

    /******** Smartlist ********/

    public void searchInSmartlist(String cajaBusqueda, String busqueda) throws Exception {
        log.info("Inicia búsqueda en Smarlist: " + busqueda);
        By cajaBusquedaElement = SeleniumFunctions.getCompleteElement(cajaBusqueda);
        driver.findElement(cajaBusquedaElement).clear();
        driver.findElement(cajaBusquedaElement).sendKeys(busqueda);
        driver.findElement(cajaBusquedaElement).sendKeys(Keys.RETURN);
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath("//table[@class='k-selectable']"))));
        log.info("Termina búsqueda en Smarlist: " + busqueda);
    }

    /******** Wait until expected conditions has met ********/

    public boolean isElementDisplayed(String element) throws Exception {
        boolean isDisplayed;
        try {
            By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
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

    public void waitForElementVisible(String element) throws Exception
    {
        By SeleniumElement = SeleniumFunctions.getCompleteElement(element);
        WebDriverWait w = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        log.info("Esperando que el elemento: "+element + " esté visible");
        w.until(ExpectedConditions.visibilityOfElementLocated(SeleniumElement));
    }

    public void waitForTextToBePresentInElement(String text , String element) throws Exception {
        int reps = 0;
        boolean found = false;
        By seleniumElement;

        while (reps <= 10) {
            seleniumElement = SeleniumFunctions.getCompleteElement(element);

            if (!driver.findElement(seleniumElement).getText().equals(text)) {
                TimeUnit.MILLISECONDS.sleep(1000);
            } else {
                found = true;
                break;
            }
            reps++;
        }

        if (!found) {
            throw new NoSuchElementException("The text: " + text + " has not been found in element: " + element);
        }
    }

    public void refreshWaitingChange(String element, String text) throws Exception {
        int intentos = 0;
        boolean found = false;

        while (intentos <= INTENTOS_MAX) {
            if (!getTextElement(element).equalsIgnoreCase(text)) {
                driver.navigate().refresh();
                intentos++;
            } else {
                found = true;
                break;
            }
        }

        if (!found) {
            throw new NoSuchElementException("The text: " + text + " has not been found in element: " + element);
        }
    }

    /******** Form ********/

    public void validateInfo(List<List<String>> rows) throws Exception {
        for (List<String> columns : rows) {

            if(columns.get(1).trim().equalsIgnoreCase("FechaHoy")) {
                aggregatedAsserts.assertTrue("Fechas NO coinciden : " + columns.get(0).trim() + " - Sistema: " + ElementText + " - Prueba: " + columns.get(1).trim(), DateUtils.isSameDay(Objects.requireNonNull(DateValidator.toDate(getTextElement(columns.get(0).trim()))), new Date()));
            }
            else{
                SeleniumFunctions.getCompleteElement(columns.get(0));
                if(FieldType.equalsIgnoreCase("Fecha")) {
                    aggregatedAsserts.assertTrue("Fechas NO coinciden : " + columns.get(0).trim() + " - Sistema: " + ElementText + " - Prueba: " + columns.get(1).trim(), DateUtils.isSameDay(Objects.requireNonNull(DateValidator.toDate(getTextElement(columns.get(0).trim()))), Objects.requireNonNull(DateValidator.toDate(columns.get(1).trim()))));
                }
                else{
                    ElementText = getTextElement(columns.get(0).trim());
                    aggregatedAsserts.assertTrue("Texto NO coinciden para elemento: " + columns.get(0).trim() + " - Sistema: " + ElementText + " - Prueba: " + columns.get(1).trim(), ElementText.toUpperCase().contains(columns.get(1).trim().toUpperCase()));
                }
            }

        }
        aggregatedAsserts.processAllAssertions();
    }

    public void fillForm(List<List<String>> rows) throws Exception {
        int intentos = 0;

        language = readProperties("language");

        for (List<String> columns : rows) {
            By SeleniumElement = SeleniumFunctions.getCompleteElement(columns.get(0));

            switch (FieldType){
                case "Texto":
                    driver.findElement(SeleniumElement).clear();
                    driver.findElement(SeleniumElement).sendKeys(columns.get(1));
                    log.info(String.format("Al elemento %s se le pone este texto %s", columns.get(0), columns.get(1)));
                    break;
                case "Lista":
                    //Espera a que la lista cargue sus elementos
                    while(new Select(driver.findElement(SeleniumElement)).getOptions().size() <= 1
                        && getTextElement(columns.get(0).trim()).isEmpty()
                        && intentos < INTENTOS_MAX){
                        log.info("Esperando lista: " + new Select(driver.findElement(SeleniumElement)).getOptions().size());
                        TimeUnit.SECONDS.sleep(1);
                        intentos++;
                    }

                    if(intentos >= INTENTOS_MAX)
                        throw new TimeoutException("Se agotó el tiempo de espera del llenado de la lista "+columns.get(0));

                    Select opt = new Select(driver.findElement(SeleniumElement));
                    log.info("Seleccionando: " + columns.get(1) + " por texto");
                    opt.selectByVisibleText(columns.get(1));
                    break;
                case "Radio":
                    List<WebElement> radio = driver.findElements(SeleniumFunctions.getCompleteElement(columns.get(0)));
                    for (WebElement webElement : radio) {
                        if (webElement.getAttribute("value").equalsIgnoreCase(columns.get(1))) {
                            webElement.click();
                            log.info(String.format("Del radio %s se selecciona elemento con valor %s", columns.get(0), columns.get(1)));
                            break;
                        }
                    }
                    break;
                case "Checkbox":
                    if((Boolean.parseBoolean(columns.get(1)) && !driver.findElement(SeleniumFunctions.getCompleteElement(columns.get(0))).isSelected())
                       || (!Boolean.parseBoolean(columns.get(1)) && driver.findElement(SeleniumFunctions.getCompleteElement(columns.get(0))).isSelected()))
                    {
                        log.info(String.format("Al cheque %s se marca con valor %s", columns.get(0), columns.get(1)));
                        driver.findElement(SeleniumFunctions.getCompleteElement(columns.get(0))).click();
                    }
                    break;
                case "CodeCombo":
                    driver.findElement(SeleniumElement).clear();
                    driver.findElement(SeleniumElement).sendKeys(columns.get(1));
                    driver.findElement(SeleniumElement).sendKeys(Keys.TAB);

                    log.info(String.format("Al codecombo %s se le pone codigo %s", columns.get(0), columns.get(1)));
                    break;
                case "Fecha":
                    driver.findElement(SeleniumElement).clear();
                    if(columns.get(1).equalsIgnoreCase("FechaHoy"))
                        driver.findElement(SeleniumElement).sendKeys(DateValidator.todayDate(language));
                    else {
                        if(DateValidator.validateDate(columns.get(1)))
                            driver.findElement(SeleniumElement).sendKeys(columns.get(1));
                        else
                            throw new Exception("Fecha en formato incorrecto");
                    }
                    log.info(String.format("Al calendario %s se le pone esta fecha %s", columns.get(0), columns.get(1)));
                    break;
                case "ValueList":
                    driver.findElement(SeleniumElement).clear();
                    driver.findElement(SeleniumElement).sendKeys(columns.get(1));
                    driver.findElement(SeleniumElement).sendKeys(Keys.ARROW_DOWN);
                    //Esperar que la lista se despliegue
                    TimeUnit.SECONDS.sleep(1);
                    driver.findElement(By.className("ac_even")).click();

                    log.info(String.format("Al valuelist %s se le pone texto %s", columns.get(0), columns.get(1)));
                    break;
                default:
                    log.error("Manejo de tipo no disponible");
            }
        }
    }

    /******** No classification ********/

    public void saveInScenario(String key, String text) {

        if (!ScenaryData.containsKey(key)) {
            ScenaryData.put(key,text);
            log.info(String.format("Guardar como contexto de escenario - llave: %s - valor: %s ", key,text));
        } else {
            ScenaryData.replace(key,text);
            log.info(String.format("Actualizar como contexto de escenario - llave: %s - valor: %s ", key,text));
        }

    }

    public void checkIfPresent(List<List<String>> rows) throws Exception {
        for (List<String> columns : rows) {
            for (String element : columns) {
                aggregatedAsserts.assertTrue("Elemento NO esta presente: " + element, this.isElementDisplayed(element));
            }
        }
        aggregatedAsserts.processAllAssertions();
    }

    public void selectCompanyIfNotSelected(String empresa) throws Exception {
        String empresaActual = getTextElement("EmpresaActual");
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);

        if (!empresaActual.contains(empresa)) {
            TimeUnit.SECONDS.sleep(1);
            WebElement dropdown = driver.findElement(SeleniumFunctions.getCompleteElement("ListaEmpresas"));
            Actions action = new Actions(driver);
            action.moveToElement(dropdown).perform();

            By SeleniumElement = null;

            switch (empresa) {
                case "ASEINFO Corporativo":
                    SeleniumElement = SeleniumFunctions.getCompleteElement("ASEINFOCorporativo");
                    break;
                case "ASEINFO El Salvador":
                    SeleniumElement = SeleniumFunctions.getCompleteElement("ASEINFOElSalvador");
                    break;
                case "ASEINFO Guatemala":
                    SeleniumElement = SeleniumFunctions.getCompleteElement("ASEINFOGuatemala");
                    break;
                case "ASEINFO Honduras":
                    SeleniumElement = SeleniumFunctions.getCompleteElement("ASEINFOHonduras");
                    break;
                case "ASEINFO Panamá":
                    SeleniumElement = SeleniumFunctions.getCompleteElement("ASEINFOPanama");
                    break;
            }

            WebElement subMenu = driver.findElement(SeleniumElement);
            action.moveToElement(subMenu);
            wait.until(ExpectedConditions.elementToBeClickable(subMenu));
            action.click().build().perform();
        }
    }

    public static String getPassword(String usuario) throws Exception {
        if(prop.getProperty("IDS").equalsIgnoreCase("yes") || prop.getProperty("IDS").equalsIgnoreCase("si"))
            SegAcceso.load(inSegAccesoIDS);
        else
            SegAcceso.load(inSegAcceso);
        return SegAcceso.getProperty(usuario);
    }

    public void editRow(String datoColumna, String text) throws Exception {
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        wait.until(ExpectedConditions.visibilityOfElementLocated(SeleniumFunctions.getCompleteElement("Tabla")));
        By SeleniumElement = SeleniumFunctions.getCompleteElement("Tabla");
        WebElement tabla = driver.findElement(SeleniumElement);
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        boolean registroExiste=false;
        int posicionColumna = 0;

        List <WebElement> encabezados = tabla.findElements(By.tagName("th"));

        //Se busca la posicion del dato de columna propocionado
        for (WebElement ignored : encabezados) {
            if(!encabezados.get(posicionColumna).getText().equalsIgnoreCase(datoColumna))
                posicionColumna++;
            else {
                registroExiste = true;
                break;
            }
        }
        if(!registroExiste) {
            aggregatedAsserts.fail("Columna \"" + datoColumna + "\" no encontrado");
            aggregatedAsserts.processAllAssertions();
            return;
        }

        registroExiste = false;

        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            //Si columnas es igual a cero es la fila con los encabezados
            if(columnas.size() == 0){
                continue;
            }

            //List <WebElement> acciones = columnas.get(0).findElements(By.tagName("a"));
            List <WebElement> acciones = fila.findElements(By.tagName("a"));

            if(acciones.size()==0) {
                aggregatedAsserts.fail("Acciones de eliminar y/o editar no encontrado");
            }

            if (columnas.get(posicionColumna).getText().equalsIgnoreCase(text)) {
                if(acciones.size()==3)
                    acciones.get(2).click();
                else
                    acciones.get(1).click();
                registroExiste = true;
                break;
            }
        }
        if(!registroExiste) {
            aggregatedAsserts.fail("Registro \"" + text + "\" no encontrado");
        }

        aggregatedAsserts.processAllAssertions();
    }

    public void deleteRow(String datoColumna, String text) throws Exception {
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        wait.until(ExpectedConditions.visibilityOfElementLocated(SeleniumFunctions.getCompleteElement("Tabla")));
        By SeleniumElement = SeleniumFunctions.getCompleteElement("Tabla");
        WebElement tabla = driver.findElement(SeleniumElement);
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        boolean registroExiste=false;
        int posicionColumna = 0;

        List <WebElement> encabezados = tabla.findElements(By.tagName("th"));

        //Se busca la posicion del dato de columna propocionado
        for (WebElement ignored : encabezados) {
            if(!encabezados.get(posicionColumna).getText().equalsIgnoreCase(datoColumna))
                posicionColumna++;
            else {
                registroExiste = true;
                break;
            }
        }
        if(!registroExiste) {
            aggregatedAsserts.fail("Columna \"" + datoColumna + "\" no encontrado");
            aggregatedAsserts.processAllAssertions();
            return;
        }

        registroExiste = false;

        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            //Si columnas es igual a cero es la fila con los encabezados
            if(columnas.size() == 0){
                continue;
            }

            if (columnas.get(posicionColumna).getText().equalsIgnoreCase(text)) {
                columnas.get(0).findElements(By.tagName("a")).get(0).click();
                registroExiste = true;
                break;
            }
        }
        if(!registroExiste) {
            aggregatedAsserts.fail("Registro \"" + datoColumna + "\" no encontrado");
            aggregatedAsserts.processAllAssertions();
        }
    }

    public void advanceSearch(List<List<String>> rows) throws Exception {
        int intentos = 0;
        WebDriverWait wait = new WebDriverWait(driver, EXPLICIT_TIMEOUT);
        for (List<String> columns : rows) {
            By SeleniumElement = SeleniumFunctions.getCompleteElement(columns.get(0));

            switch (FieldType){
                case "Texto":
                    driver.findElement(SeleniumElement).clear();
                    driver.findElement(SeleniumElement).sendKeys(columns.get(1));
                    log.info(String.format("Al elemento %s se le pone este texto %s", columns.get(0), columns.get(1)));
                    break;
                case "Lista":
                    //Espera a que la lista cargue sus elementos
                    while(new Select(driver.findElement(SeleniumElement)).getOptions().size() <= 1
                            && getTextElement(columns.get(0).trim()).isEmpty()
                            && intentos < INTENTOS_MAX){
                        log.info("Esperando lista: " + new Select(driver.findElement(SeleniumElement)).getOptions().size());
                        TimeUnit.SECONDS.sleep(1);
                        intentos++;
                    }

                    if(intentos >= INTENTOS_MAX)
                        throw new TimeoutException("Se agotó el tiempo de espera del llenado de la lista "+columns.get(0));

                    Select opt = new Select(driver.findElement(SeleniumElement));
                    log.info("Seleccionando: " + columns.get(1) + " por texto");
                    opt.selectByVisibleText(columns.get(1));
                    break;
                case "Radio":
                    List<WebElement> radio = driver.findElements(SeleniumFunctions.getCompleteElement(columns.get(0)));
                    for (WebElement webElement : radio) {
                        if (webElement.getAttribute("value").equalsIgnoreCase(columns.get(1))) {
                            webElement.click();
                            log.info(String.format("Del radio %s se selecciona elemento con valor %s", columns.get(0), columns.get(1)));
                            break;
                        }
                    }
                    break;
                case "Checkbox":
                    if((Boolean.parseBoolean(columns.get(1)) && !driver.findElement(SeleniumFunctions.getCompleteElement(columns.get(0))).isSelected())
                            || (!Boolean.parseBoolean(columns.get(1)) && driver.findElement(SeleniumFunctions.getCompleteElement(columns.get(0))).isSelected()))
                    {
                        log.info(String.format("Al cheque %s se marca con valor %s", columns.get(0), columns.get(1)));
                        driver.findElement(SeleniumFunctions.getCompleteElement(columns.get(0))).click();
                    }
                    break;
                case "CodeCombo":
                    driver.findElement(SeleniumElement).clear();
                    driver.findElement(SeleniumElement).sendKeys(columns.get(1));
                    driver.findElement(SeleniumElement).sendKeys(Keys.TAB);

                    log.info(String.format("Al codecombo %s se le pone codigo %s", columns.get(0), columns.get(1)));
                    break;
                default:
                    log.error("Manejo de tipo no disponible");
            }
        }
        TimeUnit.SECONDS.sleep(1);
        driver.findElement(SeleniumFunctions.getCompleteElement("BuscarBA")).click();
        wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(SeleniumFunctions.getCompleteElement("BuscarBA"))));
    }

    public void validateIncome(String tipoIngreso, String valor) {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        Scenario scenario = Hooks.scenario;

        Collection<String> etiquetas = scenario.getSourceTagNames();
        boolean tipoIngresoExiste=false;
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            //Si columnas es igual a cero es la fila con los encabezados
            if(columnas.size() == 0){
                continue;
            }

            //Si el texto de la 2da columna es "Total ingresos" ya se llegó al final de los ingresos
            if(columnas.get(1).getText().equalsIgnoreCase("Total ingresos")){
                break;
            }

            if(columnas.get(1).getText().equalsIgnoreCase(tipoIngreso)){
                aggregatedAsserts.assertTrue(String.format("Monto Ingreso %s no coincide con valor %s",columnas.get(2).getText(), valor), columnas.get(2).getText().equalsIgnoreCase(valor));
                tipoIngresoExiste=true;
                break;
            }
        }
        if(!tipoIngresoExiste) {
            aggregatedAsserts.fail("Tipo de ingreso \"" + tipoIngreso + "\" no encontrado");
        }

        aggregatedAsserts.processAllAssertions();
    }

    public void validateDeduction(String tipoDescuento, String valor) throws Exception {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        boolean sonFilasDescuentos=false;
        boolean tipoDescuentoExiste=false;
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            //Si columnas es igual a cero es la fila con los encabezados
            if(columnas.size() == 0){
                continue;
            }

            //Si el texto de la 2da columna es "Total ingresos", los siguientes registros son los descuentos
            if(columnas.get(1).getText().equalsIgnoreCase("Total ingresos")){
                sonFilasDescuentos = true;
                continue;
            }

            //Si el texto de la 2da columna es "Total descuentos" ya se llegó al final de los descuentos
            if(columnas.get(1).getText().equalsIgnoreCase("Total descuentos")){
                break;
            }

            if(sonFilasDescuentos && columnas.get(0).getText().equalsIgnoreCase(tipoDescuento)){
                aggregatedAsserts.assertTrue(String.format("Monto Descuento %s no coincide con valor %s", columnas.get(3).getText(), valor), columnas.get(3).getText().equalsIgnoreCase(valor));
                tipoDescuentoExiste=true;
                break;
            }
        }
        if(!tipoDescuentoExiste) {
            aggregatedAsserts.fail("Tipo de descuento \"" + tipoDescuento + "\" no encontrado");
        }

        aggregatedAsserts.processAllAssertions();
    }

    public void validateReserve(String tipoReserva, String valor) throws Exception {
        WebElement tabla = driver.findElement(By.xpath("//body//table[2]"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        boolean tipoReservaExiste=false;
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            //Si columnas es igual a cero es la fila con los encabezados
            if(columnas.size() == 0){
                continue;
            }

            if(columnas.get(1).getText().equalsIgnoreCase(tipoReserva)){
                aggregatedAsserts.assertTrue(String.format("Monto reserva %s no coincide con valor %s", columnas.get(2).getText(), valor), columnas.get(2).getText().equalsIgnoreCase(valor));
                tipoReservaExiste=true;
                break;
            }
        }
        if(!tipoReservaExiste) {
            aggregatedAsserts.fail("Tipo de reserva \"" + tipoReserva + "\" no encontrado");
        }

        aggregatedAsserts.processAllAssertions();
    }

    public void validateTotalIncome(String valor) {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            if(columnas.size() > 0 && columnas.get(1).getText().equalsIgnoreCase("Total ingresos")){
                aggregatedAsserts.assertTrue(String.format("Total de ingresos %s no coincide con valor %s", columnas.get(2).getText(), valor), columnas.get(2).getText().equalsIgnoreCase(valor));
                break;
            }
        }
        aggregatedAsserts.processAllAssertions();
    }

    public void validateTotalDeduction(String valor) {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            if(columnas.size() > 0 && columnas.get(1).getText().equalsIgnoreCase("Total descuentos")){
                aggregatedAsserts.assertTrue(String.format("Total de descuentos %s no coincide con valor %s", columnas.get(3).getText(), valor), columnas.get(3).getText().equalsIgnoreCase(valor));
                break;
            }
        }
        aggregatedAsserts.processAllAssertions();
    }

    public void validateNetValue(String valor) throws Exception {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            if(columnas.size() > 0 && columnas.get(1).getText().equalsIgnoreCase("Neto a Pagar")){
                aggregatedAsserts.assertTrue(String.format("Neto a Pagar %s no coincide con valor %s", columnas.get(3).getText(), valor), columnas.get(3).getText().equalsIgnoreCase(valor));
                break;
            }
        }
        aggregatedAsserts.processAllAssertions();
    }

    public void validateDays(String tipo, String valor) {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        boolean tipoExiste=false;
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            if(columnas.size() > 0 && columnas.get(1).getText().equalsIgnoreCase(tipo)){
                if(!columnas.get(5).getText().equalsIgnoreCase("Dias")){
                    aggregatedAsserts.fail("El tipo \"" + tipo + "\" no tiene dias asignados");
                }
                aggregatedAsserts.assertTrue(String.format("Los dias %s para %s no coincide con valor %s", columnas.get(4).getText(), tipo, valor), columnas.get(4).getText().equalsIgnoreCase(valor));
                tipoExiste=true;
                break;
            }
        }
        if(!tipoExiste) {
            aggregatedAsserts.fail("Tipo \"" + tipo + "\" no encontrado");
        }

        aggregatedAsserts.processAllAssertions();
    }

    public void validateHours(String tipo, String valor) {
        WebElement tabla = driver.findElement(By.xpath("//div[@id='detalleHistorialPago']//table//tbody"));
        List <WebElement> filas = tabla.findElements(By.tagName("tr"));
        for (WebElement fila : filas) {
            List <WebElement> columnas = fila.findElements(By.tagName("td"));

            if(columnas.size() > 0 && columnas.get(1).getText().equalsIgnoreCase(tipo)){
                if(!columnas.get(5).getText().equalsIgnoreCase("Horas")){
                    aggregatedAsserts.fail("El tipo \"" + tipo + "\" no tiene horas asignadas");
                }
                aggregatedAsserts.assertTrue(String.format("Las horas %s para %s no coincide con valor %s", columnas.get(4).getText(), tipo, valor), columnas.get(4).getText().equalsIgnoreCase(valor));
                break;
            }
        }
        aggregatedAsserts.processAllAssertions();
    }

}