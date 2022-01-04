# language: es

@organizacion
@estructura_organizativa
@responsabilidades
Característica: Responsabilidades
  Pruebas para entidad Responsabilidades

  @test
  @Highest
  @PDS-1442
  Escenario: Crear una responsabilidad con información básica (PDS-1442)
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
    * Click a Responsabilidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Responsabilidades.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Creacion Basica |
      | Abreviatura | CB              |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarResponsabilidad
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Creacion Basica |
      | Abreviatura      | CB              |
      | GrupoCorporativo | Aseinfo         |

  @test
  @Highest
  @PDS-1446
  Escenario: Editar una Responsabilidad con información básica (PDS-1446)
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
    * Click a Responsabilidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Responsabilidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Registro Editado |
      | Abreviatura | RE               |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarResponsabilidad
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Registro Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Registro Editado |
      | Abreviatura      | RE               |
      | GrupoCorporativo | Aseinfo          |

  @test
  @Highest
  @PDS-1447
  Escenario: Eliminar una Responsabilidad (PDS-1447)
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
    * Click a Responsabilidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Responsabilidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1443
  Escenario: Consultar una responsabilidad con información básica (PDS-1443)
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
    * Click a Responsabilidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Responsabilidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino PCAC-6790
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 7                                 |
      | DescripcionRO      | Para Consulta de Archivos y Campo |
      | AbreviaturaRO      | PCAC-6790                         |
      | GrupoCorporativoRO | Aseinfo                           |

  @test
  @Highest
  @PDS-1441
  Escenario: Ver el listado de reposnsabilidades (PDS-1441)
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
    * Click a Responsabilidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Responsabilidades.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1444
  Escenario: Guardar una Responsabilidad con los campos en blanco (PDS-1444)
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
    * Click a Responsabilidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Responsabilidades.json
    * Click a Nuevo
    * Click a GuardarResponsabilidad
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida