# language: es

@evowave
@solicitudes
Característica: Constancias
  Pruebas para entidad Constancias

  @test
  @Highest
  @PDS-4356
  Escenario: Solicitud Constancia - Salario (formulario completo) (PDS-4356)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento Solicitudes este presente
    * Click a Solicitudes
    * Se cargan elementos de la pagina dev/evowave/solicitudes/Solicitudes.json
    * Click a NuevaSolicitud
    * Click a Constancias
    * Se cargan elementos de la pagina dev/evowave/solicitudes/Constancias.json
    * Llenar formulario:
    #No se especifica el tipo de constancia porque "Salario" esta seleccionada por defecto
      | DirigidaA  | Banco Agricola  |
      | Comentario | Prueba PDS-4356 |
    * Adjuntar captura de pantalla al reporte
    * Click a EnviarSolicitud
    * Esperar que el elemento SolicitudEnviada este presente
    * Adjuntar captura de pantalla al reporte