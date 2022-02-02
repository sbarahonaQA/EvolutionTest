# language: es

@expedientes
@expedientes_colaboradores
@salario
Característica: Salario
  Pruebas para entidad SalarioExpedientes

  @test
  @Highest
  @PDS-7485
  Escenario: Consultar salario con información básica (PDS-7485)
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
    * Click a Salario
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Salario.json
    * Esperar que el elemento Tabla este presente
    * Adjuntar captura de pantalla al reporte
    * Click a RegistroConsultar
    Entonces Validar informacion:
      | CodigoRO        | 3867       |
      | TipoIngresoRO   | Salario    |
      | RubroSalarialRO | Salario    |
      | MonedaRO        | Quetzales  |
      | ValorPorRO      | Mensual    |
      | ValorRO         | 3,800.00   |
      | Horas/MesRO     | 240.00     |
      | ValorHoraRO     | 15.83      |
      | ValorAnteriorRO | 0.00       |
      | FechaInicioRO   | 17/04/2006 |
      | EstadoRO        | Vigente    |
