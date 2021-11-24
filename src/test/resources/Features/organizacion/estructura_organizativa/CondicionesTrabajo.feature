# language: es

@organizacion
@estructura_organizativa
@condiciones_trabajo
Característica: CondicionesTrabajo
  Pruebas para entidad CondicionesTrabajo

  @test
  @Highest
  @PDS-1337
  Escenario: Crear una condición de trabajo con información básica (PDS-1337)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a CondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CondicionesTrabajo.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion   | Condicion Nueva   |
      | Abreviatura   | CN-PDS-1337       |
      | TipoCondicion | 12                |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Condicion Nueva
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion           | Condicion Nueva   |
      | Abreviatura           | CN-PDS-1337       |
      | TipoCondicionTexto    | NEW               |
      | GrupoCorporativo      | aseinfo           |

  @test
  @Highest
  @PDS-1345
  Escenario: Editar un condición de trabajo con información básica (PDS-1345)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a CondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CondicionesTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar Condicion
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion   | Condicion Editada              |
      | Abreviatura   | DDTE                           |
      | Definicion    | Condicion de Trabajo Editada   |
      | TipoCondicion | 12                             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Condicion Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion           | Condicion Editada              |
      | Abreviatura           | DDTE                           |
      | Definicion            | Condicion de Trabajo Editada   |
      | TipoCondicionTexto    | NEW                            |
      | GrupoCorporativo      | aseinfo                        |

  @test
  @Highest
  @PDS-1350
  Escenario: Eliminar una condición de trabajo (PDS-1350)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a CondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CondicionesTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino PE-PDS-1350
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1341
  Escenario: Consultar una condición de trabajo con información básica (PDS-1341)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a CondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CondicionesTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Condicion para consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 10                         |
      | DescripcionRO      | Condicion para consulta    |
      | AbreviaturaRO      | CC-PDS-1341                |
      | DefinicionRO       | Definición                 |
      | TipoCondicionRO    | NEW                        |
      | GrupoCorporativoRO | Aseinfo                    |

  @test
  @Highest
  @PDS-1335
  Escenario: Ver el listado de condiciones de trabajo (PDS-1335)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a CondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CondicionesTrabajo.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1342
  Escenario: Guardar una condición de trabajo con los campos en blanco (PDS-1342)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a CondicionesTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CondicionesTrabajo.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El tipo de condición es requerido