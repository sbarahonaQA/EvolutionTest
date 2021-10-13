# language: es

@organizacion
@estructura_organizativa
@tipos_requisitos
Característica: TiposRequisitos
  Pruebas para entidad TiposRequisitos

  @test
  @Highest
  @PDS-1512
  Escenario: Crear un tipo de requisitos con información básica (PDS-1512)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Tipo de requisito PDS-1512 |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipodeRequisito
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de requisito PDS-1512
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Tipo de requisito PDS-1512

  @test
  @Highest
  @PDS-1513
  Escenario: Consultar un tipo de requisitos con información básica (PDS-1513)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposRequisitos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposRequisitos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino PCE-6162
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 14                    |
      | DescripcionRO      | Para Consultar Extras |
      | AbreviaturaRO      | PCE-6162              |
      | OperadorRO         | >                     |
      | GrupoCorporativoRO | Aseinfo               |