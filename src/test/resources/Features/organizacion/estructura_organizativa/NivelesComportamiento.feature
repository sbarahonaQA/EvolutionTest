# language: es

@organizacion
@estructura_organizativa
@niveles_de_comportamiento
Característica: NivelesComportamiento
  Pruebas para entidad Niveles de Comportamiento

  @test
  @Highest
  @PDS-1632
  Escenario: Crear un nivel de comportamiento con información básica (PDS-1632)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Creacion Basica |
      | Abreviatura | CB              |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarNivelComportamiento
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Esperar a que aparezca el texto Creacion Basica en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Creacion Basica |
      | Abreviatura | CB              |

  @test
  @Highest
  @PDS-1635
  Escenario: Editar un nivel de comportamiento con información básica (PDS-1635)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Esperar a que aparezca el texto Para Editar en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Creacion Basica Editada  |
      | Abreviatura | CBE                      |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarNivelComportamiento
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica Editada
    * Esperar a que aparezca el texto Creacion Basica Editada en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Creacion Basica Editada  |
      | Abreviatura | CBE                      |

  @test
  @Highest
  @PDS-1636
  Escenario: Eliminar un nivel de comportamiento (PDS-1636)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Esperar a que aparezca el texto Para Eliminar en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1633
  Escenario: Consultar un nivel de comportamiento con información básica (PDS-1633)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consultar Archivo y Adicional
    * Esperar a que aparezca el texto Consultar Archivo y Adicional en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 7                             |
      | DescripcionRO     | Consultar Archivo y Adicional |
      | AbreviaturaRO     | CAA                           |
      | GrupoCoporativoRO | Aseinfo                       |

  @test
  @Highest
  @PDS-1631
  Escenario: Ver el listado de niveles de comportamientos (PDS-1631)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Esperar que el elemento NivelesComportamiento este presente
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1634
  Escenario: Guardar un nivel de comportamiento con los campos en blanco (PDS-1634)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Esperar que el elemento NivelesComportamiento este presente
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Click a Nuevo
    * Click a GuardarNivelComportamiento
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

