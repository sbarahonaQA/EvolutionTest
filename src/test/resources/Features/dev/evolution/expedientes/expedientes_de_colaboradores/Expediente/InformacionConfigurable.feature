# language: es

@expedientes
@expedientes_colaboradores
@informacionconfigurable
Característica: InformacionConfigurable
  Pruebas para entidad InformacionConfigurable


  @test
  @Highest
  @PDS-7477
  Escenario: Seleccionar Información configurable con información básica (PDS-7477)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a InformacionConfigurable
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/InformacionConfigurable.json
    * Esperar que el elemento Suspendido este visible
    * Llenar formulario:
      | Suspendido                     | False |
      | DescuentaSeguroSocial          | False             |
      | DescuentaRenta                 | True              |
      | AnticipoEspecifico             | Sí             |
      | PorcentajeAnticipo             | 45             |
      | TipoRenta                      | Persona natural             |
      | ExcluirPagoPlanillas           | True              |
      | SuspenderCotizacionISSS        | False             |
      | SupenderCotizacionAFP          | False             |
      | RentaPatronosAnteriores        | 100            |
      | IngresoRentaPatronosAnteriores | 50              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Mensaje este visible
    * Prueba exitosa si elemento Mensaje contiene texto Información configurable guardadó correctamente

