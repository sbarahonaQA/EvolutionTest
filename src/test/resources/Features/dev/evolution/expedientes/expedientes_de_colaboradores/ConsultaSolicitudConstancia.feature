# language: es

@expedientes
@expedientes_colaboradores
@consultasolicitudconstancia
Característica: ConsultaSolcitudesConstancia
  Pruebas para ConsultaSolcitudesConstancia (Consultas de Solcitudes de Constancia)


  @test
  @Highest
  @PDS-7383
  Escenario: Consultar un consulta de solicitudes de constancia con información básica (PDS-7383)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ConsultaSolicitudConstancia
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ConsultaSolicitudConstancia.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino PDS-7383
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO         | 10                                 |
      | EmpleoRO         | 100043 - Walter Alfredo Cordova    |
      | TipoConstanciaRO | Constancia de Trabajo              |
      | DirigidaRO       | A QUIEN INTERESE                   |
      | FormaEntregaRO   | Recogeré constancia personalmente  |
      | ComentariosRO    | PARA PRUEBAS DE EVOLUTION PDS-7383 |

  @test
  @Highest
  @PDS-7391
  Escenario: Ver el listado de consulta de solicitudes de constancias (PDS-7391)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ConsultaSolicitudConstancia
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ConsultaSolicitudConstancia.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Detalles | CajaBusquedaSmartlist | ElementosMostrados |

