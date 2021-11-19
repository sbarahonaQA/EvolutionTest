# language: es

@organizacion
@estructura_organizativa
@unidades
Característica: Unidades
  Pruebas para entidad Unidades

  @test
  @Highest
  @PDS-1691
  Escenario: Crear una unidad con información básica (PDS-1691)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre        | Creación Básica |
      | AreaFuncional | Comercial       |
      | TipoUnidad    | 16              |
      | NivelHnas     | True            |
      | EsStaff       | False           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarUnidad
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre          | Creación Básica |
      | AreaFuncional   | Comercial       |
      | TipoUnidadTexto | Directores      |
      | NivelHnas       | True            |
      | EsStaff         | False           |

  @test
  @Highest
  @PDS-3439
  Escenario: Guardar y procesar una unidad con información básica (PDS-3439)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre        | Creación Básica |
      | AreaFuncional | Comercial       |
      | TipoUnidad    | 1               |
      | NivelHnas     | True            |
      | EsStaff       | False           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarYProcesar
    * Esperar 1 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado          | Vigente         |
      | Nombre          | Creación Básica |
      | AreaFuncional   | Comercial       |
      | TipoUnidadTexto | General         |
      | NivelHnas       | True            |
      | EsStaff         | False           |

  @test
  @Highest
  @PDS-1700
  Escenario: Editar una unidad con información básica (PDS-1700)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 138
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre        | Unidad Editada      |
      | AreaFuncional | Directores          |
      | TipoUnidad    | 15                  |
      | UnidadPadre   | 1                   |
      | Compania      | ASEINFO Corporativo |
      | Pais          | gt                  |
      | NivelHnas     | True                |
      | EsStaff       | True                |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarUnidad
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 138
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado           | Pendiente           |
      | Nombre           | Unidad Editada      |
      | AreaFuncional    | Directores          |
      | TipoUnidadTexto  | Soporte             |
      | UnidadPadreTexto | Directores          |
      | Compania         | ASEINFO Corporativo |
      | PaisTexto        | Guatemala           |
      | NivelHnas        | True                |
      | EsStaff          | True                |

  @test
  @Highest
  @PDS-1701
  Escenario: Eliminar una unidad (PDS-1701)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 139
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1697
  Escenario: Consultar una unidad con información básica (PDS-1697)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 137
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 137                      |
      | EstadoRO        | Pendiente                |
      | NombreRO        | unidad para consulta     |
      | AreaFuncionalRO | Aseguramiento de Calidad |
      | TipoUnidadRO    | General                  |
      | UnidadPadreRO   | Directores               |
      | CompaniaRO      | ASEINFO Guatemala        |
      | PaisRO          | Guatemala                |
      | NivelHnasRO     | No                       |
      | EsStaffRO       | No                       |
      | GrupoRO         | Aseinfo                  |

  @test
  @Highest
  @PDS-1690
  Escenario: Ver el listado de unidades (PDS-1690)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | CambiarEstado | Eliminar | GenerarOrganigramaVisio | GenerarOrganigrama | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1699
  Escenario: Guardar una unidad con los campos en blanco (PDS-1699)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Click a Nuevo
    * Click a GuardarUnidad
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese el nombre de la unidad
    * Prueba exitosa si elemento Mensaje contiene texto Favor seleccione tipo de unidad

  @test
  @Highest
  @PDS-15171
  Escenario: Generar el Organigrama de Unidades (PDS-15171)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Unidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Unidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Directores
    * Click a PrimerElementoDeSmartlist
    * Click a GenerarOrganigrama
    * Esperar que el elemento RaizOrganigrama este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento RaizOrganigrama contiene texto Directores