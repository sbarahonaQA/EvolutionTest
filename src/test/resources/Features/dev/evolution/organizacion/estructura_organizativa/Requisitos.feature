# language: es

@organizacion
@estructura_organizativa
@requisitos
Característica: Requisitos
  Pruebas para entidad Requisitos

  @test
  @Highest
  @PDS-1434
  Escenario: Crear un requisito con información básica (PDS-1434)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Requisitos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Requisitos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion   | Creación Básica |
      | TipoRequisito | Edad            |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarRequisito
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Creación Básica |
      | TipoRequisito    | Edad            |
      | GrupoCorporativo | Aseinfo         |

  @test
  @Highest
  @PDS-1432
  Escenario: Ver el listado de requisitos (PDS-1432)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Requisitos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Requisitos.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1437
  Escenario: Guardar un requisito con los campos en blanco (PDS-1437)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Requisitos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Requisitos.json
    * Click a Nuevo
    * Click a GuardarRequisito
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese la descripcion del requisito

  @test
  @Highest
  @PDS-1436
  Escenario: Consultar un requisito con información básica (PDS-1436)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Requisitos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Requisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 178
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO         | 178                  |
      | DescripcionRO    | Para Consultar       |
      | ObservacionRO    | Texto de observacion |
      | TipoRequisitoRO  | Área de Estudio      |
      | GrupoCorporativo | Aseinfo              |

  @test
  @Highest
  @PDS-1440
  Escenario: Eliminar un requisito (PDS-1440)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Requisitos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Requisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1439
  Escenario: Editar un requisito con información básica (PDS-1439)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Requisitos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Requisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion    | Descripción Editada |
      | Observacion    | Observación Editada |
      | TipoRequisito  | Idiomas             |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarRequisito
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Descripción Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Descripción Editada |
      | Observacion      | Observación Editada |
      | TipoRequisito    | Idiomas             |
      | GrupoCorporativo | Aseinfo             |