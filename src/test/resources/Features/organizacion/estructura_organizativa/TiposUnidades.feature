# language: es

@organizacion
@estructura_organizativa
@TiposUnidades
Característica: TiposUnidades
  Pruebas para entidad TiposUnidades

  @test
  @Highest
  @PDS-1217
  Escenario: Crear un Tipo de Unidades con información básica (PDS-5097)
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
    * Click a TiposUnidades
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposUnidades.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre | Creación Básica |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoUnidad
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Nombre contiene texto Creación Básica