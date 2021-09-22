# language: es

@example
Característica: CentrosCosto
  Pruebas para entidad CentrosCosto

  @test
  @organizacion
  @estructura_organizativa
  @centros_costo
  @Highest
  @PDS-1251
Escenario: Crear un centro de costo con información básica (PDS-1751)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Centros_de_costo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Click a Nuevo
    * Llenar formulario:
    | Descripcion | Control de Calidad |
    | Abreviatura | CD |
    | NomenContable | 12 |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCentroDeCosto
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Control de Calidad
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Control de Calidad

  @test
  @organizacion
  @estructura_organizativa
  @centros_costo
  @Highest
  @PDS-1754
  Escenario: Editar un centro de costo con información básica (PDS-1754)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Centros_de_costo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino CD
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Costos Editado Basico |
      | Abreviatura | CEB |
      | NomenContable | 12E |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarCentroDeCosto
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Costos Editado Basico
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Costos Editado Basico


  @test
  @organizacion
  @estructura_organizativa
  @centros_costo
  @Highest
  @PDS-1755
  Escenario: Eliminar un centro de costo (PDS-1755)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Centros_de_costo
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/CentrosCosto.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino CD
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros