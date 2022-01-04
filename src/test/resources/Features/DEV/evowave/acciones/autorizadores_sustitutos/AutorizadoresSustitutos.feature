# language: es

@evowave
@autorizadores_sustitutos
Característica: AutorizadoresSustitutos
  Pruebas para AutorizadoresSustitutos

  @test
  @Highest
  @PDS-7036
  Escenario: Crear una solicitud de autorizador sustituto con información básica (formulario completo) (PDS-7036)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina DEV/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina DEV/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento Acciones este presente
    * Click a Acciones
    * Se cargan elementos de la pagina DEV/evowave/autorizadores_sustitutos/AutorizadoresSustitutos.json
    * Click a AutorizacionDeSustitutos
    * Llenar formulario:
      | EmpleadoASustituir | Argueta Maravilla, María Leonor |
      | EmpleadoSustituto  | Chang, José Ernesto             |
    #Fecha Inicio
    * Click a FechaInicio
    * Click a SelectorAnio
    * Click a 2022
    * Click a Mayo
    * Click a 15
    #Fecha Final
    * Click a FechaFinal
    * Click a 2022
    * Click a Mayo
    * Click a 16
    * Adjuntar captura de pantalla al reporte
    * Click a EnviarSolicitud
    * Esperar que el elemento SolicitudEnviada este presente
    * Adjuntar captura de pantalla al reporte