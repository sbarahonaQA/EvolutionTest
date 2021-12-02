# language: es

@organizacion
@estructura_organizativa
@equipos_trabajo
Característica: EquiposTrabajo
  Pruebas para entidad EquiposTrabajo

  @test
  @Highest
  @PDS-1354
  Escenario: Crear un equipo de trabajo con información básica (PDS-1354)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EquiposTrabajo.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion    | Equipo de Trabajo |
      | Abreviatura    | ET                |
      | EquipoEspecial | False             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Equipo de Trabajo
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Equipo de Trabajo |
      | Abreviatura      | ET                |
      | EquipoEspecial   | False             |
      | GrupoCorporativo | Aseinfo           |

  @test
  @Highest
  @PDS-1368
  Escenario: Editar un equipo de trabajo con información básica (PDS-1368)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EquiposTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion    | Equipo de trabajo editado |
      | Abreviatura    | DE                        |
      | EquipoEspecial | True                      |
      | PlazaEncargada | 3                         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Equipo de trabajo editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion         | Equipo de trabajo editado |
      | Abreviatura         | DE                        |
      | EquipoEspecial      | True                      |
      | PlazaEncargadaTexto | Director Operaciones CORP |
      | GrupoCorporativo    | Aseinfo                   |

  @test
  @Highest
  @PDS-1371
  Escenario: Eliminar un equipo de trabajo (PDS-1371)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EquiposTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1361
  Escenario: Consultar un equipo de trabajo con información básica (PDS-1361)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EquiposTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino para consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 39            |
      | DescripcionRO      | para consulta |
      | AbreviaturaRO      | pc            |
      | EquipoEspecialRO   | No            |
      | GrupoCorporativoRO | Aseinfo       |

  @test
  @Highest
  @PDS-1353
  Escenario: Ver el listado de equipos de trabajo (PDS-1353)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EquiposTrabajo.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1365
  Escenario: Guardar un equipo de trabajo con los campos en blanco (PDS-1365)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EquiposTrabajo.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida