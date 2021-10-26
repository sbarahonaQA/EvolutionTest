# language: es

@organizacion
@estructura_organizativa
@equipos
Característica: Equipos
  Pruebas para entidad Equipos (Equipos de trabajo)

  @test
  @Highest
  @PDS-1354
  Escenario: Crear un equipo de trabajo con información básica (PDS-1354)
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
    * Click a EquiposTrabajo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Equipos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion    | Equipo de Trabajo |
      | Abreviatura    | ET                |
      | EquipoEspecial | True              |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarEquipo
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Equipo de Trabajo
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion    | Equipo de Trabajo |
      | Abreviatura    | ET                |
      | EquipoEspecial | True              |