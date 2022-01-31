# language: es

@evowave
@solicitudes
@ingresos_eventuales
Característica: IngresosEventuales
  Pruebas para IngresosEventuales

  @test
  @Highest
  @PDS-6986
  Escenario: Crear una solicitud de ingreso eventual con información básica por valor (PDS-6986)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    * Esperar que el elemento Solicitudes sea clickeable
    * Click a Solicitudes
    * Se cargan elementos de la pagina dev/evowave/solicitudes/Solicitudes.json
    * Esperar que el elemento NuevaSolicitud sea clickeable
    * Click a NuevaSolicitud
    * Esperar que el elemento IngresosEventuales sea clickeable
    * Click a IngresosEventuales
    * Se cargan elementos de la pagina dev/evowave/solicitudes/IngresosEventuales.json
    * Click a Nuevo
    * Llenar formulario:
      | Empleado             | De León Vidal, Jose Alberto       |
      | Tipo                 | Anticipo de Sueldo                |
      | Fecha                | 05/04/2021                        |
      | ValorAPagar          | 250                               |
      | Moneda               | Quetzales                         |
      | Solicitante          | Cordova, Walter Alfredo           |
      | Planilla             | Planilla Quincenal Administrativa |
      | PeriodoPlanilla      | 16/02/2022 - 28/02/2022           |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento SolicitudEnviada este presente
    * Adjuntar captura de pantalla al reporte