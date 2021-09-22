package StepDefinitions;

import Functions.SeleniumFunctions;
import cucumber.api.java.es.*;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class StepDefinitions{
    WebDriver driver;
    SeleniumFunctions functions = new SeleniumFunctions();

    /* Obsrevaciones
    *  Definir un tipo de orden para este archivo puede ser según su función, click, assert
    *  Cambiar a español los nombres de métodos
    *  */

    /******** Log Attribute ********/
    Logger log = Logger.getLogger(StepDefinitions.class);
    public StepDefinitions() {
        driver = Hooks.driver;
    }

    @Dado("^que carga Evolution")
    public void loadEvolution() throws IOException {
        String sitioPruebas = functions.readProperties("servidor") + functions.readProperties("instancia");
        log.info("Cargando URL: " + sitioPruebas);
        driver.get(sitioPruebas);
    }

    @Dado("^Cargar URL (.*)")
    public void navigateTo(String url){
        log.info("Cargando URL: " + url);
        driver.get(url);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }

    @Entonces("^Maximizar ventana")
    public void iMaximizeTheWindows() {
        driver.manage().window().maximize();
    }

    @Entonces("^Cargar elementos de la pagina (.*)")
    public void iLoadTheDOMInformation(String file) throws Exception {
        SeleniumFunctions.FileName = file;
        SeleniumFunctions.readJson();
        log.info("initialize file: " + file );
    }

    @Y("^Click a (.*)")
    public void iClicInElement(String element) throws Exception {
        functions.iClicInElement(element);
    }

    @Y("^Doble click a (.*)")
    public void doubleClick(String element) throws Exception{
        functions.doubleClick(element);
    }

    @Cuando("^Iniciar sesion con usuario (.*)")
    public void iSetLoginCredentials(String username) throws Exception {
        functions.iSetLoginCredentials(username);
    }

    @Y("^Al elemento (.*) se le pone texto (.*)")
    public void iSetElementWithText(String element, String text) throws Exception {
        functions.iSetElementWithText(element, text);
    }

    @Y("^Al elemento (.*?) se le pone valor (.*?)$")
    public void iSetElementWithKeyValue(String element, String text) throws Exception {
        functions.iSetElementWithKeyValue(element, text);
    }

    /** Assert Text is present be present*/
    @Entonces("^Prueba exitosa si elemento (.*?) contiene texto (.*?)$")
    public void checkPartialTextElementPresent(String element,String text) throws Exception {
        functions.checkPartialTextElementPresent(element, text);
    }

    @Entonces("^Prueba exitosa si elemento (.*?) NO contiene texto (.*?)$")
    public void checkPartialTextElementNotPresent(String element,String text) throws Exception {
        functions.checkPartialTextElementNotPresent(element, text);
    }

    @Y("^Capturar pantalla: (.*)")
    public void takeScreenshot(String TestCaptura) throws IOException{
        functions.screenShot(TestCaptura);
    }

    @Y("Adjuntar captura de pantalla al reporte")
    public void attachAScreenshotToReport(){
        functions.attachScreenShot();
    }

    /** Assert if element is present*/
    @Entonces("^Prueba exitosa si (.*?) esta presente$")
    public void checkIfElementIsPresent(String element) throws Exception {
        boolean isDisplayed = functions.isElementDisplayed(element);
        Assert.assertTrue("Elemento esta presente: " + element, isDisplayed);
    }

    /** Assert if element is not present*/
    @Entonces("^Prueba exitosa si (.*?) NO esta presente$")
    public void checkIfElementIsNotPresent(String element) throws Exception {
        boolean isDisplayed = functions.isElementDisplayed(element);
        Assert.assertFalse("Elemento NO esta presente: " + element, isDisplayed);
    }

    /** Handle and accept a JavaScript alert */
    @Entonces("^Aceptar alerta$")
    public void acceptAlert()
    {
        functions.acceptAlert();
    }

    /** Handle and dismiss a JavaScript alert */
    @Entonces("^Rechazar alerta$")
    public void dismissAlert()
    {
        functions.dismissAlert();
    }

    /** Handle dropdown element by visible text */
    @Y("Seleccionar (.*?) de la lista (.*?)$")
    public void iSetTextInDropdown(String option, String element) throws Exception {
        functions.selectOptionDropdownByText(element, option);
    }

    /** Handle dropdown element by index */
    @Y("Seleccionar posicion (.*?) de la lista (.*?)$")
    public void selectOptionDropdownByIndex(int option, String element) throws Exception {
        functions.selectOptionDropdownByIndex(element, option);
    }

    /** Handle dropdown element by index */
    @Y("Seleccionar valor (.*?) de la lista (.*?)$")
    public void selectOptionDropdownByValue(String option, String element) throws Exception {
        functions.selectOptionDropdownByValue(element, option);
    }

    /** Check an option from a checkbox */
    @Cuando("^Marcar cheque (.*?)$")
    public void checkCheckbox(String element) throws Exception{
        functions.checkCheckbox(element);
    }

    /** Check an option from a checkbox */
    @Cuando("^Desmarcar cheque (.*?)$")
    public void uncheckCheckbox(String element) throws Exception{
        functions.uncheckCheckbox(element);
    }

    /** Refresh current page */
    @Y("^Refrescar pagina$")
    public void refreshPage(){
        log.info("Refrescando pagina");
        driver.navigate().refresh();
    }

    /** Switch to a new windows */
    @Cuando("^Cambiar a nueva ventana$")
    public void switchNewWindow()
    {
        for(String winHandle : driver.getWindowHandles()){
            log.info("Cambiando a ventana");
            driver.switchTo().window(winHandle);
        }
    }

    /** Switch to the previous windows */
    @Cuando("^Regresar a ventana anterior$")
    public void switchPreviousWindows(){
        log.info("Regresando a ventana anterior");
        driver.switchTo().defaultContent();
    }

    /** I switch to Frame */
    @Cuando("^Cambiar al frame: (.*?)$")
    public void switchToFrame(String Frame) throws Exception {
        functions.switchToFrame(Frame);
    }

    /** Switch to a new windows by windows title */
    @Cuando("^Cambiar a la ventana con titulo \"(.*?)\"$")
    public void switchToNewWindowsByTitle(String windowTitle)
    {
        log.info("Cambiando a la ventana con titulo: " + windowTitle);
        driver.switchTo().window(windowTitle);
    }

    /** Close a windows by title */
    @Y("^Cerrar ventana \"(.*?)\"$")
    public void closeNewWindows(String windowTitle)
    {
        log.info("Cambiar a la ventana con titulo: " + windowTitle);
        driver.switchTo().window(windowTitle);
        log.info("Cerrando ventana: "+ windowTitle);
        driver.close();
    }

    /** Zoom out until the element is displayed  */
    @Y("^Zoom menos hasta que se vea elemento \"(.*?)\"$")
    public void zoomTillElementDisplay(String element) throws Exception
    {
        functions.zoomTillElementDisplay(element);
    }

    /** Scroll to the (top/end) of the page. */
    @Y("^Desplazar al (inicio|fin) de la pagina$")
    public void scrollPage(String to) {
        functions.scrollPage(to);
    }

    /** Scroll to an element. */
    @Y("^Desplazarse al elemento (.+)$")
    public void scrollToElement(String element) throws Exception
    {
        functions.scrollToElement(element);
    }

    @Y("Cambiar al frame padre")
    public void iSwitchToParentFrame() {
        functions.switchToParentFrame();
    }

    /** I click in JS element. */
    @Y("^Click al elemento JS (.+)$")
    public void clickJSElement(String element) throws Exception    {
        functions.clickJSElement(element);
    }

    /** Navigate forward */
    @Y("^Navegar hacia adelante")
    public void navigateForward()    {
        log.info("Navigate forward");
        driver.navigate().forward();
    }

    /** Navigate backward */
    @Y("^Navegar hacia atras")
    public void navigateBack()    {
        log.info("Navigate backward");
        driver.navigate().back();
    }

    /** Close the driver instance */
    @Y("^Cerrar browser$")
    public void close()    {
        log.info("Closing browsers");
        driver.close();
    }

    /** Wait for an element to be present for a specific period of time */
    @Entonces("^Esperar que el elemento (.*) este presente$")
    public void waitForElementPresent(String element) throws Exception
    {
        functions.waitForElementPresent(element);
    }

    /** Wait for an element to be visible for a specific period of time */
    @Entonces("^Esperar que el elemento (.*?) este visible$")
    public void waitForElementVisible(String element) throws Exception
    {
        functions.waitForElementVisible(element);
    }

    @Entonces("^Guardar como contexto de escenario - llave (.*?) - valor (.*?)$")
    public void saveInScenarioData(String key, String text) {
        functions.saveInScenario(key, text);
    }

    @Y("^Guardando texto (.*?) como contexto de escenario$")
    public void iSaveTextOfElementAsScenarioContext(String element) throws Exception {
        String ScenarioElementText = functions.getTextElement(element);
        functions.saveInScenario(element+".text", ScenarioElementText);
    }

    @Cuando("^Buscar en Smartlist (.*?) el termino (.*?)$")
    public void searchInSmartlist(String txtQuickSearch, String busqueda) throws Exception {
        functions.searchInSmartlist(txtQuickSearch, busqueda);
    }

    @Entonces("^Validar informacion:$")
    public void validateInfo(List<List<String>> table) throws Exception {
        functions.validateInfo(table);
    }

    @Entonces("^Llenar formulario:$")
    public void fillForm(List<List<String>> table) throws Exception {
        functions.fillForm(table);
    }

    @Entonces("^Verificar que esten presentes:")
    public void checkIfPresent(List<List<String>> table) throws Exception {
        functions.checkIfPresent(table);
    }

    @Y("^Pausa (.*?)$")
    public void pause(int segundos) throws Exception {
        Thread.sleep(segundos * 1000L);
    }

    @Pero("seleccionar la empresa (.*?) si no está seleccionada$")
    public void selectCompanyIfNotSelected(String empresa) throws Exception {
        functions.selectCompanyIfNotSelected(empresa);
    }
}
