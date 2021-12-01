# language: es

@organizacion
@estructura_organizativa
@tipos_funciones
Característica: TiposFunciones
  Pruebas para entidad TiposFunciones


  @test
  @Highest
  @PDS-1506
Escenario: Crear un tipo de funciones con información básica (PDS-1506)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Click a Nuevo
    * Llenar formulario:
    | Descripcion | Prueba Basica |
    | Abreviatura | PB |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoFuncion
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Basica
    * Esperar a que aparezca el texto Prueba Basica en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Prueba Basica |
      | Abreviatura | PB |

  @test
  @Highest
  @PDS-1509
  Escenario: Editar un tipo de funciones con información básica (PDS-1509)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Registro Editado |
      | Abreviatura | DE |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoFuncion
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Registro Editado
    * Esperar a que aparezca el texto Registro Editado en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Registro Editado |
      | Abreviatura | DE |


  @test
  @Highest
  @PDS-1510
  Escenario: Eliminar un tipo de funciones (PDS-1510)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1507
  Escenario: Consultar un tipo de funciones con información básica (PDS-1507)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 21
    * Esperar a que aparezca el texto Para Consultas Extras en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 21                     |
      | DescripcionRO     | Para Consultas Extras  |
      | AbreviaturaRO     | PCE                    |
      | GrupoCoporativoRO | Aseinfo                |


  @test
  @Highest
  @PDS-1504
  Escenario: Ver el listado de tipos de funciones (PDS-1504)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |


  @test
  @Highest
  @PDS-1508
  Escenario: Guardar un tipo de funciones con los campos en blanco (PDS-1508)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Click a Nuevo
    * Click a GuardarTipoFuncion
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese la descripcion del tipo de función
    * Prueba exitosa si elemento Mensaje contiene texto Favor ingrese la abreviatura del tipo de función