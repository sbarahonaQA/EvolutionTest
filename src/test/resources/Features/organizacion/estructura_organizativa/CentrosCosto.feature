# language: es

@organizacion
@estructura_organizativa
@centros_costo
Característica: CentrosCosto
  Pruebas para entidad CentrosCosto

  @test
  @Highest
  @PDS-1751
Escenario: Crear un centro de costo con información básica (PDS-1751)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Click a Nuevo
    * Llenar formulario:
    | Descripcion   | Control de Calidad  |
    | Abreviatura   | CD                  |
    | NomenContable | 12                  |
    | Compania      | ASEINFO Corporativo |
    | AreaFuncional | Operaciones         |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCentroDeCosto
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Control de Calidad
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado        | Pendiente           |
      | Descripcion   | Control de Calidad  |
      | Abreviatura   | CD                  |
      | NomenContable | 12                  |
      | Compania      | ASEINFO Corporativo |
      | AreaFuncional | Operaciones         |

  @test
  @Highest
  @PDS-3547
  Escenario: Crear un centro de costo con toda la información (PDS-3547)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion   | Contabilidad CORP   |
      | Abreviatura   | CONT                |
      | NomenContable | 100                 |
      | CtaContable   | 1                   |
      | Compania      | ASEINFO Corporativo |
      | AreaFuncional | Comercial           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarYProcesar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Contabilidad CORP
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado        | Vigente             |
      | Descripcion   | Contabilidad CORP   |
      | Abreviatura   | CONT                |
      | NomenContable | 100                 |
      | CtaContable   | 1                   |
      | Compania      | ASEINFO Corporativo |
      | AreaFuncional | Comercial           |

  @test
  @Highest
  @PDS-1754
  Escenario: Editar un centro de costo con información básica (PDS-1754)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario soporteit
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion   | Costos Editado Basico |
      | Abreviatura   | CEB                   |
      | NomenContable | 12E                   |
      | CtaContable   | 1E                    |
      | Compania      | ASEINFO Guatemala     |
      | AreaFuncional | Operaciones           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCentroDeCosto
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Costos Editado Basico
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion   | Costos Editado Basico |
      | Abreviatura   | CEB                   |
      | NomenContable | 12E                   |
      | CtaContable   | 1E                    |
      | Compania      | ASEINFO Guatemala     |
      | AreaFuncional | Operaciones           |

  @test
  @Highest
  @PDS-1755
  Escenario: Eliminar un centro de costo (PDS-1755)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminacion
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminacion
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1752
  Escenario: Consultar un centro de costo con información básica (PDS-1752)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Panamá si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 121
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 121                    |
      | Estado          | Vigente                |
      | DescripcionRO   | Atención al Cliente PA |
      | AbreviaturaRO   | SOP                    |
      | NomenContableRO | SOP-PA-12              |
      | CtaContableRO   | 12-SOP-008             |
      | CompaniaRO      | ASEINFO Panamá         |
      | AreaFuncionalRO | Atención al Cliente    |

  @test
  @Highest
  @PDS-1750
  Escenario: Ver el listado de centros de costo (PDS-1750)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1753
  Escenario: Guardar un centro de costo con los campos en blanco (PDS-1753)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosDeCosto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Click a Nuevo
    * Click a GuardarCentroDeCosto
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La Descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La Abreviatura es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La nomenclatura contable es requerida