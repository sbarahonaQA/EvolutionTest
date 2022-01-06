# language: es

@organizacion
@estructura_organizativa
@piramideocupacional
Característica: PiramideOcupacional
  Pruebas para entidad PiramideOcupacional (Pirámide Ocupacional)

  @test
  @Highest
  @PDS-1623
  Escenario: Crear una pirámide ocupacional con información básica (PDS-1623)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a PiramideOcupacional
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/PiramideOcupacional.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion         | Pirámide básica |
      | Abreviatura         | pb              |
      | NivelComportamiento | Nivel I         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Pirámide básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion         | Pirámide básica |
      | Abreviatura         | pb              |
      | NivelComportamiento | Nivel I         |

  @test
  @Highest
  @PDS-1629
  Escenario: Editar una pirámide ocupacional con información básica (PDS-1629)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a PiramideOcupacional
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/PiramideOcupacional.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Correlativo         | 38               |
      | Descripcion         | Pirámide Editada |
      | Abreviatura         | ECPE             |
      | NivelComportamiento | Nivel III        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Pirámide Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Correlativo         | 38               |
      | Descripcion         | Pirámide Editada |
      | Abreviatura         | ECPE             |
      | NivelComportamiento | Nivel III        |

  @test
  @Highest
  @PDS-1630
  Escenario: Eliminar una pirámide ocupacional (PDS-1630)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a PiramideOcupacional
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/PiramideOcupacional.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1624
  Escenario: Consultar una pirámide ocupacional con información básica (PDS-1624)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a PiramideOcupacional
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/PiramideOcupacional.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Directores
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO              | 1          |
      | CorrelativoRO         | 1          |
      | DescripcionRO         | Directores |
      | AbreviaturaRO         | Dir.       |
      | NivelComportamientoRO | Nivel I    |

  @test
  @Highest
  @PDS-1621
  Escenario: Ver el listado de pirámide ocupacional (PDS-1621)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a PiramideOcupacional
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/PiramideOcupacional.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1625
  Escenario: Guardar una pirámide ocupacional con los campos en blanco (PDS-1625)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a PiramideOcupacional
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/PiramideOcupacional.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida