# language: es

@example
Característica: CentrosCosto
  Pruebas para entidad CentrosCosto
  
@test
Escenario: Crear centro de costo
  Dado Cargar Evolution
  Entonces Cargar elementos de la pagina Login.json
  Cuando Iniciar sesion con usuario gerenterrhh
  Entonces Cargar elementos de la pagina CentrosCosto.json
  Y Click a Organizacion
  Y Click a EstructuraOrganizativa
  Y Click a CentrosDeCosto
  Y Click a Nuevo
  Entonces Llenar formulario:
    | Descripcion | CCO NUEVO |
    | Abreviatura | CCON |
    | NomenContable | NOM |
    | CtaContable | 1234 |
  Y Seleccionar ASEINFO Mexico de la lista Compania
  Y Seleccionar Comercial de la lista AreaFuncional
  Y Capturar pantalla: nuevo
  Y Click a GuardarCentroDeCosto
  Y Capturar pantalla: nuevo_resultado
  Entonces Prueba exitosa si elemento Mensaje contiene texto Centro de costo guardado correctamente


  @test
  Escenario: Editar centro de costo
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina CentrosCosto.json
    Y Click a Organizacion
    Y Click a EstructuraOrganizativa
    Y Click a CentrosDeCosto
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 1234
    Y Click a PrimerElementoDeSmartlist
    Y Click a Editar
    Entonces Llenar formulario:
      | Descripcion | CCO EDITADO |
    Y Capturar pantalla: editar
    Y Click a GuardarCentroDeCosto
    Y Capturar pantalla: editar_resultado
    Entonces Prueba exitosa si elemento Mensaje contiene texto Centro de costo guardado correctamente


  @test
  Escenario: Eliminar centro de costo
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina CentrosCosto.json
    Y Click a Organizacion
    Y Click a EstructuraOrganizativa
    Y Click a CentrosDeCosto
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 1234
    Y Click a PrimerElementoDeSmartlist
    Y Click a Eliminar
    Y Aceptar alerta
    Y Esperar que el elemento Mensaje este presente
    Y Capturar pantalla: eliminar_resultado
    Entonces Prueba exitosa si elemento Mensaje contiene texto Centro de costo eliminado correctamente