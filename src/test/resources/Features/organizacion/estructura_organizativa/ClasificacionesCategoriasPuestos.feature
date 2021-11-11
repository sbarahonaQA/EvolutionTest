# language: es

@organizacion
@estructura_organizativa
@clasificaciones_categorias_puestos
Característica: ClasificacionesCategoriasPuestos
  Pruebas para entidad ClasificacionesCategoriasPuestos

  @test
  @Highest
  @PDS-1296
  Escenario: Crear un clasificación de categorías para puesto con información básica (PDS-1296)
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
    * Click a ClasificacionesCategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/ClasificacionesCategoriasPuestos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion   | Investigación y Desarrollo  |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarClasificacionCategoriaPuesto
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Investigación y Desarrollo
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion        | Investigación y Desarrollo |


  @test
  @Highest
  @PDS-1331
  Escenario: Editar una clasificación de categorías para puestos con información básica (PDS-1331)
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
    * Click a ClasificacionesCategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/ClasificacionesCategoriasPuestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion        | Información Editada  |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarClasificacionCategoriaPuesto
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Información Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion        | Información Editada  |


  @test
  @Highest
  @PDS-1333
  Escenario: Eliminar una clasificación de categorías para puestos (PDS-1333)
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
    * Click a ClasificacionesCategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/ClasificacionesCategoriasPuestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminacion Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1327
  Escenario: Consultar una clasificación de categorías para puestos con información básica (PDS-1327)
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
    * Click a ClasificacionesCategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/ClasificacionesCategoriasPuestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Directores
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                | 8                      |
      | DescripcionRO           | Directores             |
      | GrupoCorporativoRO      | Aseinfo                |

  @test
  @Highest
  @PDS-1295
  Escenario: Ver el listado de clasificaciones de categorías para puestos (PDS-1295)
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
    * Click a ClasificacionesCategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/ClasificacionesCategoriasPuestos.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1329
  Escenario: Guardar una clasificación de categorías para puestos con los campos en blanco (PDS-1329)
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
    * Click a ClasificacionesCategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/ClasificacionesCategoriasPuestos.json
    * Click a Nuevo
    * Click a GuardarClasificacionCategoriaPuesto
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida