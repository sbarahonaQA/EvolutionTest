# language: es

@organizacion
@estructura_organizativa
@tipos_competencia
Característica: TiposCompetencia
  Pruebas para entidad TiposCompetencia

  @test
  @Highest
  @PDS-1604
  Escenario: Crear un tipo de competencia con información básica (PDS-1604)
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
    * Click a TiposCompetencia
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/TiposCompetencia.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion     | Tipo de competencia básica |
      | EsTecnica       | True                       |
      | EsParaLiderazgo | False                      |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoCompetencia
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de competencia básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion     | Tipo de competencia básica |
      | EsTecnica       | True                       |
      | EsParaLiderazgo | False                      |

