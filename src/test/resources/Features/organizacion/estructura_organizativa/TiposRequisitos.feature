# language: es

@organizacion
@estructura_organizativa
@tipos_requisitos
Característica: TiposRequisitos
  Pruebas para entidad TiposRequisitos

  @test
  @Highest
  @PDS-1512
  Escenario: Crear un tipo de requisitos con información básica (PDS-1512)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Tipo de requisito PDS-1512 |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipodeRequisito
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de requisito PDS-1512
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Tipo de requisito PDS-1512
    Entonces Validar informacion:
      | Descripcion | Tipo de requisito PDS-1512 |

  @test
  @Highest
  @PDS-1513
  Escenario: Consultar un tipo de requisitos con información básica (PDS-1513)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino PCE-6162
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 14                    |
      | DescripcionRO      | Para Consultar Extras |
      | AbreviaturaRO      | PCE-6162              |
      | OperadorRO         | >                     |
      | GrupoCorporativoRO | Aseinfo               |

  @test
  @Highest
  @PDS-1516
  Escenario: Eliminar un tipo de requisitos (PDS-1516)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros |

  @test
  @Highest
  @PDS-1216
  Escenario: Ver el listado de tipos de requisitos (PDS-1511)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1269
  Escenario: Guardar un área funcional con los campos en blanco (PDS-1514)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Click a Nuevo
    * Click a GuardarTipodeRequisito
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese la descripción del tipo de requisito

  @test
  @Highest
  @PDS-1515
  Escenario: Editar un tipo de requisitos con información básica (PDS-1515)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | ValorEditado |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipodeRequisito
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino ValorEditado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | ValorEditado |
