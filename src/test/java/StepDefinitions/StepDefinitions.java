package StepDefinitions;

import Functions.SeleniumFunctions;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class StepDefinitions{
    WebDriver driver;
    SeleniumFunctions functions = new SeleniumFunctions();

    /******** Log Attribute ********/
    Logger log = Logger.getLogger(StepDefinitions.class);
    public StepDefinitions() {
        driver = Hooks.driver;
    }

    @Given("^Cargar Evolution")
    public void iAmInEvolution() throws IOException {
        String url = functions.readProperties("Evolution");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar EvolutionQA")
    public void iAmInEvolutionQA() throws IOException {
        String url = functions.readProperties("EvolutionQA");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar EvolutionHF")
    public void iAmInEvolutionHF() throws IOException {
        String url = functions.readProperties("EvolutionHF");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar EvolutionTipicas")
    public void iAmInEvolutionTipicas() throws IOException {
        String url = functions.readProperties("EvolutionTipicas");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar EvolutionPlugins")
    public void iAmInEvolutionPlugins() throws IOException {
        String url = functions.readProperties("EvolutionPlugins");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar Evolution_1_11_2_X")
    public void iAmInEvolution_1_11_2_X() throws IOException {
        String url = functions.readProperties("Evolution_1_11_2_X");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar Evolution local")
    public void iAmInLocalSite() throws IOException {
        String url = functions.readProperties("EvolutionLocal");
        log.info("Cargando URL: " + url);
        driver.get(url);
    }

    @Given("^Cargar URL (.*)")
    public void navigateTo(String url){
        log.info("Cargando URL: " + url);
        driver.get(url);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }

    @Then("^Maximizar ventana")
    public void iMaximizeTheWindows() {
        driver.manage().window().maximize();
    }

    @Then("^Cargar elementos de la pagina (.*)")
    public void iLoadTheDOMInformation(String file) throws Exception {
        SeleniumFunctions.FileName = file;
        SeleniumFunctions.readJson();
        log.info("initialize file: " + file );
    }

    @And("^Click a (.*)")
    public void iClicInElement(String element) throws Exception {
        functions.iClicInElement(element);
    }

    @And("^Doble click a (.*)")
    public void doubleClick(String element) throws Exception{
        functions.doubleClick(element);
    }

    @When("^Iniciar sesion con usuario (.*)")
    public void iSetLoginCredentials(String username) throws Exception {
        functions.iSetLoginCredentials(username);
    }

    @And("^Al elemento (.*) se le pone texto (.*)")
    public void iSetElementWithText(String element, String text) throws Exception {
        functions.iSetElementWithText(element, text);
    }

    @And("^Al elemento (.*?) se le pone valor (.*?)$")
    public void iSetElementWithKeyValue(String element, String text) throws Exception {
        functions.iSetElementWithKeyValue(element, text);
    }

    /** Assert Text is present be present*/
    @Then("^Prueba exitosa si elemento (.*?) contiene texto (.*?)$")
    public void checkPartialTextElementPresent(String element,String text) throws Exception {
        functions.checkPartialTextElementPresent(element, text);
    }

    @Then("^Prueba exitosa si elemento (.*?) NO contiene texto (.*?)$")
    public void checkPartialTextElementNotPresent(String element,String text) throws Exception {
        functions.checkPartialTextElementNotPresent(element, text);
    }

    @And("^Capturar pantalla: (.*)")
    public void takeScreenshot(String TestCaptura) throws IOException{
        functions.ScreenShot(TestCaptura);
    }

    @And("Adjuntar captura de pantalla al reporte")
    public void AttachAScreenshotToReport(){
        functions.attachScreenShot();
    }

    /** Assert if element is present*/
    @Then("^Prueba exitosa si (.*?) esta presente$")
    public void checkIfElementIsPresent(String element) throws Exception {
        boolean isDisplayed = functions.isElementDisplayed(element);
        Assert.assertTrue("Elemento esta presente: " + element, isDisplayed);
    }

    /** Assert if element is not present*/
    @Then("^Prueba exitosa si (.*?) NO esta presente$")
    public void checkIfElementIsNotPresent(String element) throws Exception {
        boolean isDisplayed = functions.isElementDisplayed(element);
        Assert.assertFalse("Elemento NO esta presente: " + element, isDisplayed);
    }

    /** Handle and accept a JavaScript alert */
    @Then("^Aceptar alerta$")
    public void AcceptAlert()
    {
        functions.AcceptAlert();
    }

    /** Handle and dismiss a JavaScript alert */
    @Then("^Rechazar alerta$")
    public void dismissAlert()
    {
        functions.dismissAlert();
    }

    /** Handle dropdown element by visible text */
    @And("Seleccionar (.*?) de la lista (.*?)$")
    public void iSetTextInDropdown(String option, String element) throws Exception {
        functions.selectOptionDropdownByText(element, option);
    }

    /** Handle dropdown element by index */
    @And("Seleccionar posicion (.*?) de la lista (.*?)$")
    public void selectOptionDropdownByIndex(int option, String element) throws Exception {
        functions.selectOptionDropdownByIndex(element, option);
    }

    /** Handle dropdown element by index */
    @And("Seleccionar valor (.*?) de la lista (.*?)$")
    public void selectOptionDropdownByValue(String option, String element) throws Exception {
        functions.selectOptionDropdownByValue(element, option);
    }

    /** Check an option from a checkbox */
    @When("^Marcar cheque (.*?)$")
    public void checkCheckbox(String element) throws Exception{
        functions.checkCheckbox(element);
    }

    /** Check an option from a checkbox */
    @When("^Desmarcar cheque (.*?)$")
    public void UncheckCheckbox(String element) throws Exception{
        functions.UncheckCheckbox(element);
    }

    /** Refresh current page */
    @And("^Refrescar pagina$")
    public void refreshPage(){
        log.info("Refrescando pagina");
        driver.navigate().refresh();
    }

    /** Switch to a new windows */
    @When("^Cambiar a nueva ventana$")
    public void switchNewWindow()
    {
        for(String winHandle : driver.getWindowHandles()){
            log.info("Cambiando a ventana");
            driver.switchTo().window(winHandle);
        }
    }

    /** Switch to the previous windows */
    @When("^Regresar a ventana anterior$")
    public void switchPreviousWindows(){
        log.info("Regresando a ventana anterior");
        driver.switchTo().defaultContent();
    }

    /** I switch to Frame */
    @When("^Cambiar al frame: (.*?)$")
    public void switchToFrame(String Frame) throws Exception {
        functions.switchToFrame(Frame);
    }

    /** Switch to a new windows by windows title */
    @When("^Cambiar a la ventana con titulo \"(.*?)\"$")
    public void switchToNewWindowsByTitle(String windowTitle)
    {
        log.info("Cambiando a la ventana con titulo: " + windowTitle);
        driver.switchTo().window(windowTitle);
    }

    /** Close a windows by title */
    @And("^Cerrar ventana \"(.*?)\"$")
    public void closeNewWindows(String windowTitle)
    {
        log.info("Cambiar a la ventana con titulo: " + windowTitle);
        driver.switchTo().window(windowTitle);
        log.info("Cerrando ventana: "+ windowTitle);
        driver.close();
    }

    /** Zoom out until the element is displayed  */
    @And("^Zoom menos hasta que se vea elemento \"(.*?)\"$")
    public void zoomTillElementDisplay(String element) throws Exception
    {
        functions.zoomTillElementDisplay(element);
    }

    /** Scroll to the (top/end) of the page. */
    @And("^Desplazar al (inicio|fin) de la pagina$")
    public void scrollPage(String to) throws Exception
    {
        functions.scrollPage(to);
    }

    /** Scroll to an element. */
    @And("^Desplazarse al elemento (.+)$")
    public void scrollToElement(String element) throws Exception
    {
        functions.scrollToElement(element);
    }

    @And("Cambiar al frame padre")
    public void iSwitchToParentFrame() {
        functions.switchToParentFrame();
    }

    /** I click in JS element. */
    @And("^Click al elemento JS (.+)$")
    public void ClickJSElement(String element) throws Exception    {
        functions.ClickJSElement(element);
    }

    /** Navigate forward */
    @And("^Navegar hacia adelante")
    public void navigateForward()    {
        log.info("Navigate forward");
        driver.navigate().forward();
    }

    /** Navigate backward */
    @And("^Navegar hacia atras")
    public void navigateBack()    {
        log.info("Navigate backward");
        driver.navigate().back();
    }

    /** Close the driver instance */
    @And("^Cerrar browser$")
    public void close()    {
        log.info("Closing browsers");
        driver.close();
    }

    /** Wait for an element to be present for a specific period of time */
    @Then("^Esperar que el elemento (.*) este presente$")
    public void waitForElementPresent(String element) throws Exception
    {
        functions.waitForElementPresent(element);
    }

    /** Wait for an element to be visible for a specific period of time */
    @Then("^Esperar que el elemento (.*?) este visible$")
    public void waitForElementVisible(String element) throws Exception
    {
        functions.waitForElementVisible(element);
    }

    @Then("^Guardar como contexto de escenario - llave (.*?) - valor (.*?)$")
    public void SaveInScenarioData(String key,String text) {
        functions.SaveInScenario(key, text);
    }

    @And("^Guardando texto (.*?) como contexto de escenario$")
    public void iSaveTextOfElementAsScenarioContext(String element) throws Exception {
        String ScenarioElementText = functions.GetTextElement(element);
        functions.SaveInScenario(element+".text", ScenarioElementText);
    }

    @When("^Buscar en Smartlist (.*?) el termino (.*?)$")
    public void buscarEnSmartlist(String txtQuickSearch, String busqueda) throws Exception {
        functions.searchInSmartlist(txtQuickSearch, busqueda);
    }

    @Then("^Validar informacion:$")
    public void ValidateInfo(List<List<String>> table) throws Exception {
        functions.ValidateInfo(table);
    }

    @Then("^Llenar formulario:$")
    public void FillForm(List<List<String>> table) throws Exception {
        functions.FillForm(table);
    }

    @Then("^Navegar$")
    public void Navegar(List<List<String>> table) throws Exception {
        functions.Navegar(table);
    }

    @Then("^Verificar que esten presentes:")
    public void Verificar(List<List<String>> table) throws Exception {
        functions.Verificar(table);
    }

    @And("^Pausa (.*?)$")
    public void Pausa(int segundos) throws Exception {
        Thread.sleep(segundos * 1000);
    }

}
