# language: es

@expedientes
@expedientes_colaboradores
@personal
Característica: Personal
  Pruebas para entidad PersonalExpedientes

  @test
  @Highest
  @PDS-7479
  Escenario: Consultar un Préstamo en expedientes con información básica (PDS-7479)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a SeccionPersonal
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/SeccionPersonal.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 700003              |
      | EstadoRO | Activo |
      | EstadoActivoRO          | Activo       |
      | TipoContratoRO        | Permanente        |
      | FechaIngresoRO | 17/4/2006        |
      | CategoriaRetiroRO   | -----         |
      | MotivoRetiroRO        | -----             |
      | ObservacionesRetiroRO | ----- |
      | FechaRetiroRO          | -----       |
      | JornadaRO        | Nocturna        |
      | PlanillaRO | [1] - Planilla Quincenal Administrativa       |
      | PlazaRO   | [19] - Consultor Junior CORP        |
      | PuestoRO        | [18] - Consultor Junior              |
      | UnidadRO | [10] - Operaciones |
      | CentroTrabajoRO          | [1] - Oficinas Centrales       |
      | CentroCostoRO        | • [OPE-CORP-1] -  Operaciones CORP (100.00%)        |
      | InicioContratoRO | 17/4/2006        |
      | FinContratoRO   | -----        |
      | AntiguedadRO   | 15 Años |