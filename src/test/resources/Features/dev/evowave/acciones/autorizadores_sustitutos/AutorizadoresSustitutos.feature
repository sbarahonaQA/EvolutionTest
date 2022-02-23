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
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    * Esperar que el elemento Eventos este visible
    * Click a Acciones
    * Se cargan elementos de la pagina dev/evowave/acciones/autorizadores_sustitutos/AutorizadoresSustitutos.json
    * Esperar que el elemento AutorizacionDeSustitutos este presente
    * Click a AutorizacionDeSustitutos
    * Llenar formulario:
      | EmpleadoASustituir | Argueta Maravilla, María Leonor |
      | EmpleadoSustituto  | Chang, José Ernesto             |
      | FechaInicio        | 15/05/2022                      |
      | FechaFinal         | 16/05/2022                      |
    * Adjuntar captura de pantalla al reporte
    * Click a EnviarSolicitud
    * Esperar que el elemento SolicitudEnviada este presente
    * Adjuntar captura de pantalla al reporte