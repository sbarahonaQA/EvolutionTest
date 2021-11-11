# language: es

@organizacion
@estructura_organizativa
@tipos_de_competencia
Característica: TiposCompetencia
  Pruebas para entidad TiposCompetencia

  @test
  @Highest
  @PDS-1604
  Escenario: Crear un tipo de competencia con información básica (PDS-1604)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion     | Tipo de competencia básica |
      | EsTecnica       | True                       |
      | EsParaLiderazgo | False                      |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoCompetencia
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de competencia básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion     | Tipo de competencia básica |
      | EsTecnica       | True                       |
      | EsParaLiderazgo | False                      |

  @test
  @Highest
  @PDS-1613
  Escenario: Editar un tipo de competencia con información básica (PDS-1613)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion     | Descripción Editada |
      | EsTecnica       | False               |
      | EsParaLiderazgo | True                |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoCompetencia
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Descripción Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion     | Descripción Editada |
      | EsTecnica       | False               |
      | EsParaLiderazgo | True                |

  @test
  @Highest
  @PDS-1614
  Escenario: Eliminar un tipo de competencia (PDS-1614)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1605
  Escenario: Consultar un tipo de competencia con información básica (PDS-1605)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino De Gestión
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 2          |
      | DescripcionRO     | De Gestión |
      | EsTecnicaRO       | False      |
      | EsParaLiderazgoRO | False      |

  @test
  @Highest
  @PDS-1600
  Escenario: Ver el listado de tipos de competencia (PDS-1600)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1612
  Escenario: Guardar un tipo de competencia con los campos en blanco (PDS-1612)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Click a Nuevo
    * Click a GuardarTipoCompetencia
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La Descripción es requerida

