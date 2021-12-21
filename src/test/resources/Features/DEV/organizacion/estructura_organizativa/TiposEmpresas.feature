# language: es

@organizacion
@estructura_organizativa
@tipos_empresas
Característica: TiposEmpresas
  Pruebas para entidad TiposEmpresas

  @test
  @Highest
  @PDS-1490
  Escenario: Crear un tipo de empresa con información básica (PDS-1490)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposEmpresas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposEmpresas.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Información Básica |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoEmpresa
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Información Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Información Básica