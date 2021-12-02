# language: es

@organizacion
@estructura_organizativa
@funciones_generales
Característica: FuncionesGenerales
  Pruebas para entidad FuncionesGenerales

  @test
  @Highest
  @PDS-1395
  Escenario: Crear una función general con información básica (PDS-1395)
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
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/FuncionesGenerales.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Funciones General |
      | Detalle     | Prueba            |
      | TipoFuncion | Administrativas   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Funciones General
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Funciones General |
      | Detalle          | Prueba            |
      | TipoFuncion      | Administrativas   |
      | GrupoCorporativo | Aseinfo           |


  @test
  @Highest
  @PDS-1406
  Escenario: Editar una función general con información básica (PDS-1406)
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
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/FuncionesGenerales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Edicion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Para Edición Básica Editado |
      | Detalle     | Detalle editado             |
      | TipoFuncion | Generales                   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Edición Básica Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Para Edición Básica Editado |
      | Detalle          | Detalle editado             |
      | TipoFuncion      | Generales                   |
      | GrupoCorporativo | Aseinfo                     |

  @test
  @Highest
  @PDS-1411
  Escenario: Eliminar una función general (PDS-1411)
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
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/FuncionesGenerales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Función para eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1399
  Escenario: Consultar una función general con información básica (PDS-1399)
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
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/FuncionesGenerales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 15                 |
      | DescripcionRO      | consulta           |
      | DetalleRO          | Detalle de función |
      | TipoFuncionRO      | Operativas         |
      | GrupoCorporativoRO | Aseinfo            |


  @test
  @Highest
  @PDS-1393
  Escenario: Ver el listado de funciones generales (PDS-1393)
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
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/FuncionesGenerales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1405
  Escenario: Guardar una función general con los campos en blanco (PDS-1405)
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
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/FuncionesGenerales.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese la descripción de la función
    * Prueba exitosa si elemento Mensaje contiene texto El tipo de función es requerido