# language: es

@expedientes
@expedientes_colaboradores
@adicional
Característica: Adicional
  Pruebas para entidad Adicional


  @test
  @Highest
  @PDS-16457
  Escenario: Editar sección información adicional con información básica (PDS-16457)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Aragon, Lucia Renee
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Adicional
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Adicional.json
    * Esperar que el elemento FechaFallecimiento este visible
    * Llenar formulario:
      | FechaFallecimiento | 12/7/2019   |
      | AFPCotiza          | Para Editar |
      | EsPensionado       | True        |
      | EsJubilado         | True        |
      | Acta               | 23456       |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar 4 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Click a Adicional
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Adicional.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | FechaFallecimiento | 12/7/2019   |
      | AFPCotiza          | Para Editar |
      | EsPensionado       | True        |
      | EsJubilado         | True        |
      | Acta               | 23456       |



  @test
  @Highest
  @PDS-16468
  Escenario: Consultar información adicional en un expediente (PDS-16468)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 200050
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Adicional
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Adicional.json
    * Esperar que el elemento CodigoRO este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO             | 26/1/2020       |
      | AFPCotizaRO          | Archivo y Campo |
      | EmpleadoPensionadoRO | Sí              |
      | EmpleadoJubiladoRO   | Sí              |
      | ActaRO               | 16468           |
