# language: es

@expedientes
@expedientes_colaboradores
@beneficiosadicionales
Característica: BeneficiosAdicionales
  Pruebas para entidad BeneficiosAdicionalesExpedientes


  @test
  @Highest
  @PDS-7418
  Escenario: Seleccionar beneficios adicionales (PDS-7418)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100023
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a BeneficiosAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/BeneficiosAdicionales.json
    * Esperar que el elemento Tabla este visible
    * Click a Aguinaldo
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Beneficios adicionales guardados correctamente


  @test
  @Highest
  @PDS-7684
  Escenario: Consultar un Préstamo en expedientes con información básica (PDS-7684)
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
    * Click a BeneficiosAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/BeneficiosAdicionales.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Aguinaldo | True |


