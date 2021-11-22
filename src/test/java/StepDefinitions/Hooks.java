package StepDefinitions;

import Functions.CreateDriver;
import Functions.DBFactory;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.apache.log4j.Logger;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;

import java.sql.Connection;
import java.sql.SQLException;

public class Hooks {
	
		public static WebDriver driver;
		public static Connection connection;
		Logger log = Logger.getLogger(Hooks.class);
		Scenario scenario = null;

		@Before
		public void before(Scenario scenario) {
			this.scenario = scenario;
		}

		@Before
	    public void initDriver() {
			log.info("***********************************************************************************************************");
			log.info("[ Configuration ] - Inicia configuracion del driver");
			log.info("***********************************************************************************************************");
	    	driver = CreateDriver.initConfig();
	    	
	    	log.info("***********************************************************************************************************");
			if (scenario != null) {
				log.info("[ Escenario ] - "+ scenario.getName());
			}
			log.info("***********************************************************************************************************");
	    }

		@Before
		public void initDBConnection(){
			log.info("***********************************************************************************************************");
			log.info("[ Configuration ] - Inicia configuracion de la conexion DB");
			log.info("***********************************************************************************************************");
			connection = DBFactory.initConfig();
			log.info("***********************************************************************************************************");
		}
	     
	 	@After
	    public void embedScreenshot(Scenario scenario) {

	        if(scenario.isFailed()) {
		        try {
		        	scenario.write("Escenario falló.");
		        	scenario.write("URL actual: " + driver.getCurrentUrl());
		            byte[] screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.BYTES);
		            scenario.embed(screenshot, "src/test/resources/Data/Screenshots/Failed");
		        } catch (WebDriverException somePlatformsDontSupportScreenshots) {
		            System.err.println(somePlatformsDontSupportScreenshots.getMessage());
		        }
	        }
	        
			log.info("***********************************************************************************************************");
			log.info("[ Driver Status ] - Cerrando instancia del webdriver");
			log.info("***********************************************************************************************************");
	        driver.quit();
	        
	    }

		@After
		public void closingDBConnection(){
			if (connection != null) {
				try {
					log.info("Closing Database Connection...");
					connection.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
}
