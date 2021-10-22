# language: es

@organizacion
@estructura_organizativa
@tipos_de_competencia
Característica: TiposDeCompetencia
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
      | Descripcion | Tipo de competencia básica |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoCompetencia
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de competencia básica
    * Esperar a que aparezca el texto Tipo de competencia básica en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Tipo de competencia básica |

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
    * Esperar a que aparezca el texto Para Editar en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Descripción Editada  |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoCompetencia
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Descripción Editada
    * Esperar a que aparezca el texto Descripción Editada en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Descripción Editada  |

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
    * Esperar a que aparezca el texto Eliminar en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
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
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino De Gestión
    * Esperar a que aparezca el texto De Gestión en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 2                             |
      | DescripcionRO     | De Gestión                    |

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
    * Esperar que el elemento TiposCompetencia este presente
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
    * Esperar que el elemento TiposCompetencia este presente
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Click a Nuevo
    * Click a GuardarTipoCompetencia
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La Descripción es requerida

