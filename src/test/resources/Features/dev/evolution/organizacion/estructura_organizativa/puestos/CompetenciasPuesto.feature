# language: es

@organizacion
@estructura_organizativa
@puestos
@competencias_por_puesto
Característica: CompetenciaPuesto
  Pruebas para entidad CompetenciaPuesto

  @test
  @Highest
  @PDS-6560
  Escenario: Crear una Competencia de un puesto con información básica (PDS-6560)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CompetenciasPuesto.json
    * Esperar que el elemento CodigoCompetencia este visible
    * Llenar formulario:
      | CodigoCompetencia | 15 |
      | CodigoConducta    | 15 |
    * Click a Agregar
    * Click a GuardarCompetencias
    * Esperar que el elemento Mensaje deje de estar visible
    * Esperar que el elemento TablaCompetenciasGestion este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar competencia de TablaCompetenciasGestion con valor • Maneja las relaciones políticas dentro de la Institución

  @test
  @Highest
  @PDS-6561
  Escenario: Editar una Competencia de un puesto con información básica (PDS-6561)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CompetenciasPuesto.json
    * Esperar que el elemento PesoEnfoqueEstrategico este visible
    * Llenar formulario:
      | PesoEnfoqueEstrategico             | 0.00 |
      | PesoDesarrollaUnEnfoqueALargoPlazo | 0.00 |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCompetencias
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Los niveles de cumplimento fueron guardados exitosmamente


  @test
  @Highest
  @PDS-16060
  Escenario: Eliminar una Competencia de un puesto con información básica (PDS-16060)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CompetenciasPuesto.json
    * Esperar que el elemento TablaCompetenciasGestion este visible
    * Click a EliminarEnfoqueEstrategico
    * Aceptar alerta
    * Click a GuardarCompetencias
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Los niveles de cumplimento fueron guardados exitosmamente

  @test
  @Highest
  @PDS-6558
  Escenario: Consultar una Competencia de un puesto con información básica (PDS-6558)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CompetenciasPuesto.json
    * Esperar que el elemento TablaCompetenciasGestion este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | PesoCompromisosOrganizacionRO                                                                     | 65.00  |
      | NivelEsperadoCompromisosOrganizacionRO                                                            | 100.00 |
      | PesoHaceSacrificiosPorLaInstitucionRO                                                             | 25.00  |
      | NivelEsperadoHaceSacrificiosPorLaInstitucionRO                                                    | 100.00 |
      | PesoHaceSacrificiosPoLaInstitucionSinQueSeLoPidanRO                                               | 75.00  |
      | NivelEsperadoPoLaInstitucionSinQueSeLoPidanRO                                                     | 100.00 |
      | PesoDesarroloDeLasPersonasRO                                                                      | 10.00  |
      | NivelEsperadoDesarroloDeLasPersonasRO                                                             | 100.00 |
      | PesoCreaUnAmbienteDeAprendizajeYCrecimientoParaLosDemasRO	                                      | 100.00 |
      | NivelEsperadoCreaUnAmbienteDeAprendizajeYCrecimientoParaLosDemasRO                                | 100.00 |
      | PesoAdaptacionAlCambioRO                                                                          | 5.00   |
      | NivelEsperadoAdaptacionAlCambioRO                                                                 | 100.00 |
      | PesoAdaptaSuPropiaEstrategiaRO	                                                                  | 100.00 |
      | NivelEsperadoSuPropiaEstrategiaRO                                                                 | 100.00 |
      | PesoOrientacionAResultadosRO	                                                                  | 10.00  |
      | NivelEsperadoOrientacionAResultadosRO                                                             | 100.00 |
      | PesoTomaRiesgosEmprendedoresCalculadosRO	                                                      | 100.00 |
      | NivelEsperadoTomaRiesgosEmprendedoresCalculadosRO	                                              | 100.00 |
      | PesoAdministraConBaseEnValores1RO	                                                              | 5.00   |
      | NivelEsperadoAdministraConBaseEnValores1RO                                                        | 100.00 |
      | PesoUtilizaPerspectivasALargoPlazoConElClienteRO	                                              | 100.00 |
      | NivelEsperadoUtilizaPerspectivasALargoPlazoConElClienteRO	                                      | 100.00 |
      | PesoAdministraConBaseEnValores2RO	                                                              | 5.00   |
      | NivelEsperadoAdministraConBaseEnValores2RO	                                                      | 100.00 |
      | PesoLlevaACaboAccionesConformeASusValoresAunCuandoEstoConllevaUnCostoORiesgoImportanteRO          | 100.00 |
      | NivelEsperadoLlevaACaboAccionesConformeASusValoresAunCuandoEstoConllevaUnCostoORiesgoImportanteRO | 100.00 |

  @test
  @Highest
  @PDS-6565
  Escenario: Ver el listado de Competencia de un puesto (PDS-6565)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CompetenciasPuesto.json
    * Esperar que el elemento TablaCompetenciasGestion este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | TablaCompetenciasGestion | TablaCompetenciasOrganizacionales |