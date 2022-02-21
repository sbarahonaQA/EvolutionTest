# language: es

@expedientes
@expedientes_colaboradores
@consultasolicitudconstancia
Característica: ConsultaSolcitudesConstancia
  Pruebas para ConsultaSolcitudesConstancia (Consultas de Solcitudes de Constancia)


  @test
  @Highest
  @PDS-7373
  Escenario: Consultar un consulta de solicitudes de ayuda económica con información básica (PDS-7373)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ConsultaSolicitudAyudaEconomica
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ConsultaSolicitudAyudaEconomica.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 4
    * Click a PrimerElementoDeSmartlist
    * Click a Consultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO             | 4                                          |
      | SolicitanteRO        | 100004 - Joaquin Alfredo Umanzor Velásquez |
      | MotivoRO             | Defunción                                  |
      | NombreFallecidoRO    | Miguel Angel                               |
      | FechaFallecimientoRO | 16/7/2021                                  |
      | ParentescoRO         | Abuelo (a)                                 |
      | ComentariosRO        | Editar el registro                         |


  @test
  @Highest
  @PDS-7381
  Escenario: Ver el listado de consultas de solicitudes de ayuda económica (PDS-7381)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ConsultaSolicitudAyudaEconomica
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ConsultaSolicitudAyudaEconomica.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Consultar | CajaBusquedaSmartlist | ElementosMostrados |

