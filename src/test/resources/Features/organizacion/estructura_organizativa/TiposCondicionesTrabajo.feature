# language: es

@organizacion
@estructura_organizativa
@tipos_condiciones_trabajo
Característica: TiposCondicionesTrabajo
  Pruebas para entidad TiposCondicionesTrabajo

  @test
  @Highest
  @PDS-1450
  Escenario: Crear un tipos de condiciones de trabajo con información básica (PDS-1450)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposCondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCondicionesTrabajo.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Tipo de condición básica |
      | Abreviatura | pds1450 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de condición básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Tipo de condición básica |
      | Abreviatura | pds1450 |

  @test
  @Highest
  @PDS-1468
  Escenario: Editar un tipo de condición de trabajo con información básica (PDS-1468)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a TiposCondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCondicionesTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | descripción editada |
      | Abreviatura | pds1468 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino pds1468
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | descripción editada |
      | Abreviatura | pds1468 |

  @test
  @Highest
  @PDS-1469
  Escenario: Eliminar un tipo de condición de trabajo (PDS-1469)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposCondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCondicionesTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1454
  Escenario: Consultar un tipo de condición de trabajo con información básica (PDS-1454)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposCondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCondicionesTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta de Archivo y Campo
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO | 16 |
      | DescripcionRO | Consulta de Archivo y Campo |
      | AbreviaturaRO | CAC |
      | GrupoCoporativoRO | Aseinfo |

  @test
  @Highest
  @PDS-1448
  Escenario: Ver el listado de tipos de condiciones de trabajo (PDS-1448)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposCondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCondicionesTrabajo.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1467
  Escenario: Guardar un tipo de condición de trabajo con los campos en blanco (PDS-1467)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposCondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCondicionesTrabajo.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

