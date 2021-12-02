# language: es

@organizacion
@estructura_organizativa
@competencias
Característica: Competencias
  Pruebas para entidad Competencias

  @test
  @Highest
  @PDS-1758
  Escenario: Crear una competencia con información básica (PDS-1758)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion       | Competencia Basica |
      | TipoCompetencia   | Técnica            |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Competencia Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado            | Pendiente          |
      | Descripcion       | Competencia Basica |
      | TipoCompetencia   | Técnica            |
      | GrupoCorporativo  | Aseinfo            |

  @test
  @Highest
  @PDS-3555
  Escenario: Autorizar una competencia sin flujo de autorización (PDS-3555)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion       | Descripción nueva competencia     |
      | Definicion        | Definición nueva competencia      |
      | FraseAsociada     | rase asociada a nueva competencia |
      | AutorFrase        | Nicolas Tesla                     |
      | TipoCompetencia   | Técnica                           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarYProcesar
    #Esperando que el registro se autorice
    * Esperar 1 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Descripción nueva competencia
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado            | Vigente                           |
      | Descripcion       | Descripción nueva competencia     |
      | Definicion        | Definición nueva competencia      |
      | FraseAsociada     | rase asociada a nueva competencia |
      | AutorFrase        | Nicolas Tesla                     |
      | TipoCompetencia   | Técnica                           |
      | GrupoCorporativo  | Aseinfo                           |

  @test
  @Highest
  @PDS-1761
  Escenario: Editar una competencia con información básica (PDS-1761)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Competencia para edición
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion       | Competencia Editable |
      | Definicion        | Definición Editable  |
      | FraseAsociada     | Fase Editable        |
      | AutorFrase        | Lidia                |
      | TipoCompetencia   | Técnica              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Competencia Editable
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado            | Vigente              |
      | Descripcion       | Competencia Editable |
      | Definicion        | Definición Editable  |
      | FraseAsociada     | Fase Editable        |
      | AutorFrase        | Lidia                |
      | TipoCompetencia   | Técnica              |
      | GrupoCorporativo  | Aseinfo              |


  @test
  @Highest
  @PDS-1762
  Escenario:Eliminar una competencia (PDS-1762)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminacion
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1759
  Escenario: Consultar una competencia con información básica (PDS-1759)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Competencia para consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 14                        |
      | EstadoRO           | Vigente                   |
      | DescripcionRO      | Competencia para consulta |
      | DefinicionRO       | Definición                |
      | FraseAsociadaRO    | Frase asociada            |
      | AutorFraseRO       | ASEINFO GT                |
      | TipoCompetenciaRO  | De Gestión                |
      | GrupoCorporativoRO | Aseinfo                   |

  @test
  @Highest
  @PDS-1756
  Escenario: Ver el listado de competencias (PDS-1756)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1760
  Escenario: Guardar una competencia con los campos en blanco (PDS-1760)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a Competencias
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Competencias.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida