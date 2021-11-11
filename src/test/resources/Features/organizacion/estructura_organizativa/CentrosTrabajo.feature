# language: es

@organizacion
@estructura_organizativa
@CentrosTrabajo
Característica: CentrosTrabajo
  Pruebas para entidad CentrosTrabajo

  @test
  @Highest
  @PDS-1738
  Escenario: Crear un centro de trabajo con información básica (PDS-1738)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion  | Oficinas Este       |
      | Direccion    | Este                |
      | Compania     | ASEINFO Corporativo |
      | Pais         | Guatemala           |
      | Departamento | CHIQUIMULA          |
      | Municipio    | OLOPA               |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCentroDeTrabajo
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Oficinas Este
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado       | Pendiente           |
      | Descripcion  | Oficinas Este       |
      | Direccion    | Este                |
      | Compania     | ASEINFO Corporativo |
      | Pais         | Guatemala           |
      | Departamento | CHIQUIMULA          |
      | Municipio    | OLOPA               |

  @test
  @Highest
  @PDS-3542
  Escenario: Guardar y procesar un centro de trabajo con información básica (PDS-3542)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion  | Oficinas Oeste         |
      | Direccion    | Oeste                  |
      | Compania     | ASEINFO Corporativo    |
      | Pais         | Guatemala              |
      | Departamento | SAN MARCOS             |
      | Municipio    | SAN PEDRO SACATEPEQUEZ |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarYProcesar
    #Esperando que el registro se autorice
    * Esperar 1 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Oficinas Oeste
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado       | Vigente                |
      | Descripcion  | Oficinas Oeste         |
      | Direccion    | Oeste                  |
      | Compania     | ASEINFO Corporativo    |
      | Pais         | Guatemala              |
      | Departamento | SAN MARCOS             |
      | Municipio    | SAN PEDRO SACATEPEQUEZ |

  @test
  @Highest
  @PDS-1739
  Escenario: Editar un centro de trabajo con información básica (PDS-1739)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion  | Centro Editado      |
      | Direccion    | Barrio El Golfo     |
      | Compania     | ASEINFO El Salvador |
      | Pais         | El Salvador         |
      | Departamento | CABANAS             |
      | Municipio    | Antiguo Cuscatlán   |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCentroDeTrabajo
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Centro Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado       | Pendiente           |
      | Descripcion  | Centro Editado      |
      | Direccion    | Barrio El Golfo     |
      | Compania     | ASEINFO El Salvador |
      | Pais         | El Salvador         |
      | Departamento | CABANAS             |
      | Municipio    | Antiguo Cuscatlán   |

  @test
  @Highest
  @PDS-1740
  Escenario: Eliminar un centro de trabajo (PDS-1740)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminacion basica
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1741
  Escenario: Consultar un centro de trabajo con información básica (PDS-1741)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 1
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO       | 1                     |
      | EstadoRO       | Vigente               |
      | DescripcionRO  | Oficinas Centrales    |
      | DireccionRO    | Oficinas Corporativas |
      | TelefonoRO     | 22855559              |
      | FaxRO          | 22529913              |
      | CompaniaRO     | ASEINFO Corporativo   |
      | PaisRO         | Guatemala             |
      | DepartamentoRO | GUATEMALA             |
      | MunicipioRO    | GUATEMALA             |

  @test
  @Highest
  @PDS-1742
  Escenario: Ver el listado de centros de trabajo (PDS-1742)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1743
  Escenario: Guardar un centro de trabajo con los campos en blanco (PDS-1743)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a CentrosTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosTrabajo.json
    * Click a Nuevo
    * Click a GuardarCentroDeTrabajo
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La dirección es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El municipio es requerido