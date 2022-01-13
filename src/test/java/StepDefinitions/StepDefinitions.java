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

    /******** Log Attribute ********/
    Logger log = Logger.getLogger(StepDefinitions.class);
    public StepDefinitions() {
        driver = Hooks.driver;
    }

    /******** Interacción con browser ********/

    @Dado("^que carga Evolution")
    public void queCargaEvolution() throws IOException {
        String sitioPruebas = functions.readProperties("servidor") + functions.readProperties("instancia");
        log.info("Cargando URL: " + sitioPruebas);
        driver.get(sitioPruebas);
    }

    @Dado("^Cargar URL (.*)")
    public void cargarURL(String url){
        log.info("Cargando URL: " + url);
        driver.get(url);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }

    @Entonces("^Maximizar ventana")
    public void maximizarVentana() {
        driver.manage().window().maximize();
    }

    @Entonces("^Se cargan elementos de la pagina (.*)")
    public void seCarganElementosDeLaPagina(String file) throws Exception {
        SeleniumFunctions.FileName = file;
        SeleniumFunctions.readJson();
        log.info("initialize file: " + file );
    }

    /** Refresh current page */
    @Y("^Refrescar pagina$")
    public void referescarPagina(){
        log.info("Refrescando pagina");
        driver.navigate().refresh();
    }

    /** Switch to a new windows */
    @Cuando("^Cambiar a nueva ventana$")
    public void cambiarANuevaVentana()
    {
        for(String winHandle : driver.getWindowHandles()){
            log.info("Cambiando a ventana");
            driver.switchTo().window(winHandle);
        }
    }

    /** Switch to the previous windows */
    @Cuando("^Regresar a ventana anterior$")
    public void regresarAVentanaAnterior(){
        log.info("Regresando a ventana anterior");
        driver.switchTo().defaultContent();
    }

    /** I switch to Frame */
    @Cuando("^Cambiar al frame: (.*?)$")
    public void cambiarAlFrame(String Frame) throws Exception {
        functions.switchToFrame(Frame);
    }

    /** Switch to a new windows by windows title */
    @Cuando("^Cambiar a la ventana con titulo \"(.*?)\"$")
    public void cambiarALaVentanaConTitulo(String windowTitle)
    {
        log.info("Cambiando a la ventana con titulo: " + windowTitle);
        driver.switchTo().window(windowTitle);
    }

    /** Close a windows by title */
    @Y("^Cerrar ventana \"(.*?)\"$")
    public void cerrarVentana(String windowTitle)
    {
        log.info("Cambiar a la ventana con titulo: " + windowTitle);
        driver.switchTo().window(windowTitle);
        log.info("Cerrando ventana: "+ windowTitle);
        driver.close();
    }

    /** Navigate forward */
    @Y("^Navegar hacia adelante")
    public void navegarHaciaAdelante()    {
        log.info("Navigate forward");
        driver.navigate().forward();
    }

    /** Navigate backward */
    @Y("^Navegar hacia atras")
    public void navegarHaciaAtras()    {
        log.info("Navigate backward");
        driver.navigate().back();
    }

    /** Close the driver instance */
    @Y("^Cerrar browser$")
    public void cerrarBrowser()    {
        log.info("Closing browsers");
        driver.close();
    }

    /** Zoom out until the element is displayed  */
    @Y("^Zoom menos hasta que se vea elemento \"(.*?)\"$")
    public void zoomMenosHastaQueSeVeaElemento(String element) throws Exception
    {
        functions.zoomTillElementDisplay(element);
    }

    /** Scroll to the (top/end) of the page. */
    @Y("^Desplazar al (inicio|fin) de la pagina$")
    public void desplazarAlInicioFinDeLaPagina(String to) {
        functions.scrollPage(to);
    }

    /** Scroll to an element. */
    @Y("^Desplazarse al elemento (.+)$")
    public void desplazarseAlElemento(String element) throws Exception
    {
        functions.scrollToElement(element);
    }

    @Y("Cambiar al frame padre")
    public void cambiarAlFramePadre() {
        functions.switchToParentFrame();
    }

    /******** Click ********/

    @Y("^Click a (.*)")
    public void clickA(String element) throws Exception {
        functions.iClicInElement(element);
    }

    @Y("^Doble click a (.*)")
    public void doubleClickA(String element) throws Exception{
        functions.doubleClick(element);
    }

    /** I click in JS element. */
    @Y("^Click al elemento JS (.+)$")
    public void clickJSElement(String element) throws Exception    {
        functions.clickJSElement(element);
    }

    /****** Inicio de sesión ********/

    @Cuando("^Inicio sesion con usuario (.*)")
    public void inicioSesionConUsuario(String username) throws Exception {
        if(functions.readProperties("IDS").equalsIgnoreCase("yes") || functions.readProperties("IDS").equalsIgnoreCase("si"))
            functions.iSetIDSLoginCredentials(username);
        else
            functions.iSetLoginCredentials(username);
    }

    /****** Captura de pantalla ********/

    @Y("^Capturar pantalla: (.*)")
    public void capturarPantalla(String TestCaptura) throws IOException{
        functions.screenShot(TestCaptura);
    }

    @Y("Adjuntar captura de pantalla al reporte")
    public void adjuntarCapturaDePantallaAlReporte(){
        functions.attachScreenShot();
    }

    /****** Alertas ********/

    /** Handle and accept a JavaScript alert */
    @Entonces("^Aceptar alerta$")
    public void aceptarAlerta() throws InterruptedException {
        functions.acceptAlert();
        TimeUnit.SECONDS.sleep(1);
    }

    /** Handle and dismiss a JavaScript alert */
    @Entonces("^Rechazar alerta$")
    public void rechazarAlerta()
    {
        functions.dismissAlert();
    }

    /****** Dropdowns ********/

    /** Handle dropdown element by visible text */
    @Y("Seleccionar (.*?) de la lista (.*?)$")
    public void seleccionarDeLaLista(String option, String element) throws Exception {
        functions.selectOptionDropdownByText(element, option);
    }

    /** Handle dropdown element by index */
    @Y("Seleccionar posicion (.*?) de la lista (.*?)$")
    public void seleccionarPosicionDeLaLista(int option, String element) throws Exception {
        functions.selectOptionDropdownByIndex(element, option);
    }

    /** Handle dropdown element by index */
    @Y("Seleccionar valor (.*?) de la lista (.*?)$")
    public void seleccionarValorDeLaLista(String option, String element) throws Exception {
        functions.selectOptionDropdownByValue(element, option);
    }

    /****** Checkboxes ********/

    /** Check an option from a checkbox */
    @Cuando("^Marcar cheque (.*?)$")
    public void marcarCheque(String element) throws Exception{
        functions.checkCheckbox(element);
    }

    /** Check an option from a checkbox */
    @Cuando("^Desmarcar cheque (.*?)$")
    public void desmarcarCheque(String element) throws Exception{
        functions.uncheckCheckbox(element);
    }

    /****** Esperas ********/

    /** Wait for an element to be present for a specific period of time */
    @Entonces("^Esperar que el elemento (.*) este presente$")
    public void esperarQueElEelmentoEstePresente(String element) throws Exception
    {
        functions.waitForElementPresent(element);
    }

    /** Wait for an element to be visible for a specific period of time */
    @Entonces("^Esperar que el elemento (.*?) este visible$")
    public void esperarQueElElementoEsteVisible(String element) throws Exception
    {
        functions.waitForElementVisible(element);
    }

    @Entonces("^Esperar que el elemento (.*?) deje de estar visible$")
    public void esperarQueElElementoDejeDeEstarVisible(String element) throws Exception
    {
        functions.waitForElementInvisible(element);
    }

    @Y("^Esperar (.*?) segundos$")
    public void esperar(int segundos) throws InterruptedException {
        TimeUnit.SECONDS.sleep(segundos);
    }

    @Y("^Esperar a que aparezca el texto (.*?) en el elemento (.*?)$")
    public void esperarAQueAparezcaElTextoEnElElemento(String elemento, String texto) throws Exception {
        functions.waitForTextToBePresentInElement(elemento, texto);
    }

    @Y("^Refrescar hasta que elemento (.*?) tenga texto (.*?)$")
    public void refrescarEsperandoCambio(String elemento, String texto) throws Exception {
        functions.refreshWaitingChange(elemento, texto);
    }


    /****** Guardar en contexto ********/

    @Entonces("^Guardar como contexto de escenario - llave (.*?) - valor (.*?)$")
    public void guardarComoContextoDeEscenarioLlaveValor(String key, String text) {
        functions.saveInScenario(key, text);
    }

    @Y("^Guardando texto (.*?) como contexto de escenario$")
    public void guardandoTextoComoContextoDeEscenario(String element) throws Exception {
        String ScenarioElementText = functions.getTextElement(element);
        functions.saveInScenario(element+".text", ScenarioElementText);
    }

    /****** Smartlists ********/

    @Cuando("^Buscar en Smartlist (.*?) el termino (.*?)$")
    public void buscarEnSmartlistsElTermino(String txtQuickSearch, String busqueda) throws Exception {
        functions.searchInSmartlist(txtQuickSearch, busqueda);
    }

    /****** Formularios ********/

    @Entonces("^Validar informacion:$")
    public void validarInformacion(List<List<String>> table) throws Exception {
        functions.validateInfo(table);
    }

    @Entonces("^Llenar formulario:$")
    public void llenarFormulario(List<List<String>> table) throws Exception {
        functions.fillForm(table);
    }

    /******** Seleccionar empresa ********/

    @Pero("seleccionar la empresa (.*?) si no está seleccionada$")
    public void seleccionarLaEmpresaSiNoEstaSeleccionada(String empresa) throws Exception {
        functions.selectCompanyIfNotSelected(empresa);
    }

    /******** Asserts ********/

    /** Assert Text is present be present*/
    @Entonces("^Prueba exitosa si elemento (.*?) contiene texto (.*?)$")
    public void pruebaExitosaSiElementoContieneTexto(String element,String text) throws Exception {
        functions.checkPartialTextElementPresent(element, text);
    }

    @Entonces("^Prueba exitosa si elemento (.*?) NO contiene texto (.*?)$")
    public void pruebaExitosaSiElementoNoContieneTexto(String element,String text) throws Exception {
        functions.checkPartialTextElementNotPresent(element, text);
    }

    @Entonces("^Prueba exitosa si elemento (.*?) es igual al texto (.*?)$")
    public void pruebaExitosaSiElementoEsIgualTexto(String element,String text) throws Exception {
        functions.checkTextElementPresent(element, text);
    }

    @Entonces("^Prueba exitosa si elemento (.*?) no es igual al texto (.*?)$")
    public void pruebaExitosaSiElementoNoEsIgualTexto(String element,String text) throws Exception {
        functions.checkTextElementNotPresent(element, text);
    }

    /** Assert if element is present*/
    @Entonces("^Prueba exitosa si (.*?) esta presente$")
    public void pruebaExitosaSiEstaPresente(String element) throws Exception {
        boolean isDisplayed = functions.isElementDisplayed(element);
        Assert.assertTrue("Elemento esta presente: " + element, isDisplayed);
    }

    /** Assert if element is not present*/
    @Entonces("^Prueba exitosa si (.*?) NO esta presente$")
    public void pruebaExitosaSiNoEstaPresente(String element) throws Exception {
        boolean isDisplayed = functions.isElementDisplayed(element);
        Assert.assertFalse("Elemento NO esta presente: " + element, isDisplayed);
    }

    /******** Sin clasificacion ********/

    @Entonces("^Verificar que esten presentes:")
    public void verificarQueEstenPresentes(List<List<String>> table) throws Exception {
        functions.checkIfPresent(table);
    }

    @Y("^Al elemento (.*) se le pone texto (.*)")
    public void alElementoSeLePoneTexto(String element, String text) throws Exception {
        functions.iSetElementWithText(element, text);
    }

    @Y("^Al elemento (.*?) se le pone valor (.*?)$")
    public void alElementoSeLePoneValor(String element, String text) throws Exception {
        functions.iSetElementWithKeyValue(element, text);
    }

    @Y("^Editar registro con columna (.*?) de valor (.*?)$")
    public void EditarRegistroConColumnaDeValor(String columna, String text) throws Exception {
        functions.editRow(columna, text);
    }

    @Y("^Editar registro de (.*?) con columna (.*?) de valor (.*?)$")
    public void EditarRegistroDeConColumnaDeValor(String tabla, String columna, String text) throws Exception {
        functions.editRowFromTable(tabla, columna, text);
    }

    @Y("^Eliminar registro con columna (.*?) de valor (.*?)$")
    public void EliminarRegistroConColumnaDeValor(String columna, String text) throws Exception {
        functions.deleteRow(columna, text);
    }

    @Y("^Eliminar registro de (.*?) con columna (.*?) de valor (.*?)$")
    public void EliminarRegistroDeConColumnaDeValor(String tabla, String columna, String text) throws Exception {
        functions.deleteRowFromTable(tabla, columna, text);
    }

    @Entonces("^Aplicar busqueda avanzada:")
    public void aplicarBusquedaAvanzada(List<List<String>> table) throws Exception {
        functions.advanceSearch(table);
    }

    @Entonces("Comprobar que el valor del ingreso (.*) sea de (.*?)")
    public void comprobarQueElValorDelIngresoSeaDe(String tipo, String valor) {
        functions.validateIncome(tipo, valor);
    }

    @Entonces("Comprobar que el valor del descuento (.*) sea de (.*?)")
    public void comprobarQueElValorDelDescuentoSeaDe(String tipo, String valor) {
        functions.validateDeduction(tipo, valor);
    }

    @Entonces("Comprobar que el valor de la reserva (.*) sea de (.*?)")
    public void comprobarQueElValorDeLaReservaSeaDe(String tipo, String valor) {
        functions.validateReserve(tipo, valor);
    }

    @Entonces("Comprobar que el total de ingresos sea de (.*?)")
    public void comprobarQueElTotalDeIngresosSeaDe(String valor) {
        functions.validateTotalIncome(valor);
    }

    @Entonces("Comprobar que el total de descuentos sea de (.*?)")
    public void comprobarQueElTotalDeDescuentosSeaDe(String valor) {
        functions.validateTotalDeduction(valor);
    }

    @Entonces("Comprobar que el neto a pagar sea de (.*?)")
    public void comprobarQueElNetoAPagarSeaDe(String valor) {
        functions.validateNetValue(valor);
    }

    @Entonces("Comprobar que los dias de (.*) sean (.*?)")
    public void comprobarQueLosDiasDeSean(String tipo, String valor) {
        functions.validateDays(tipo, valor);
    }

    @Entonces("Comprobar que las horas de (.*) sean (.*?)")
    public void comprobarQueLasHorasDeSean(String tipo, String valor) {
        functions.validateHours(tipo, valor);
    }

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
