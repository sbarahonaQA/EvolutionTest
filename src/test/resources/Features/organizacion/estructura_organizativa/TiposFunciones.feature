# language: es

@example
Característica: TiposFunciones
  Pruebas para entidad TiposFunciones


  @test
  @organizacion
  @estructura_organizativa
  @tipos_funciones
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
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Prueba Basica

  @test
  @organizacion
  @estructura_organizativa
  @tipos_funciones
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 22
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
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Registro Editado

  @test
  @organizacion
  @estructura_organizativa
  @tipos_funciones
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 23
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @organizacion
  @estructura_organizativa
  @tipos_funciones
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
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 21                     |
      | DescripcionRO     | Para Consultas Extras  |
      | AbreviaturaRO     | PCE                    |
      | GrupoCoporativoRO | Aseinfo                |


  @test
  @organizacion
  @estructura_organizativa
  @tipos_funciones
  @Highest
  @PDS-1504
  Escenario: Ver el listado de tipos de funciones (PDS-1504
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Esperar que el elemento tiposFunciones este presente
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |


  @test
  @organizacion
  @estructura_organizativa
  @tipos_funciones
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
    * Esperar que el elemento tiposFunciones este presente
    * Click a TiposFunciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposFunciones.json
    * Click a Nuevo
    * Click a GuardarTipoFuncion
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese la descripcion del tipo de función