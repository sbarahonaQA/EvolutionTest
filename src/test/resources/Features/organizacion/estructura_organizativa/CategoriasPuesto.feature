# language: es

@organizacion
@estructura_organizativa
@categorias_puestos
Característica: CategoriasPuesto
  Pruebas para entidad CategoriasPuesto

  @test
  @Highest
  @PDS-1281
Escenario: Crear una categoría de puesto con información básica (PDS-1281)
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
    * Click a CategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CategoriasPuesto.json
    * Click a Nuevo
    * Llenar formulario:
    | Descripcion   | Categoría Básica         |
    | Clasificacion | General                  |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCategoriaPuesto
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Categoría Básica
    * Esperar a que aparezca el texto Categoría Básica en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion          | Categoría Básica         |
      | Clasificacion        | General                  |


  @test
  @Highest
  @PDS-1285
  Escenario: Editar una categoría de puesto con información básica (PDS-1285)
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
    * Click a CategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CategoriasPuesto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Categoria de puesto e Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion     | Registro Editado |
      | Clasificacion   | Directores       |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCategoriaPuesto
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Registro Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion     | Registro Editado |
      | Clasificacion   | Directores       |

  @test
  @Highest
  @PDS-1291
  Escenario: Eliminar una categoría de puesto (PDS-1291)
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
    * Click a CategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CategoriasPuesto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino a eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1288
  Escenario: Consultar una categoría de puesto con información básica (PDS-1288)
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
    * Click a CategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CategoriasPuesto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino para consulta
    * Esperar a que aparezca el texto para consulta en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO             | 29                     |
      | DescripcionRO        | para consulta          |
      | ClasificacionRO      | General                |
      | GrupoCorporativoRO   | Aseinfo                |



  @test
  @Highest
  @PDS-1277
  Escenario: Ver el listado de categorías de puestos (PDS-1277)
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
    * Click a CategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CategoriasPuesto.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1283
  Escenario: Guardar una categoría de puesto con los campos en blanco (PDS-1283)
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
    * Click a CategoriasPuestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CategoriasPuesto.json
    * Click a Nuevo
    * Click a GuardarCategoriaPuesto
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
