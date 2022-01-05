# language: es

@organizacion
@estructura_organizativa
@prestaciones
Característica: Prestaciones
  Pruebas para entidad Prestaciones


  @test
  @Highest
  @PDS-6685
  Escenario: Crear una prestación de un puesto con información básica (PDS-6685)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/Prestaciones.json
    * Click a Nuevo
    * Esperar que el elemento CodigoPrestacion este visible
    * Llenar formulario:
      | CodigoPrestacion | 10       |
      | Valor            | 50       |
      | CodigoMoneda     | GTQ      |
      | FechaInicio      | 8/9/2021 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Prestación de valor Aguinaldo 100%
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | PrestacionTexto | Aguinaldo 100% |
      | Valor           | 50             |
      | MonedaTexto     | Quetzales      |
      | FechaInicio     | 8/9/2021       |

  @test
  @Highest
  @PDS-6689
  Escenario: Editar una prestación de un puesto con información básica (PDS-6689)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/Prestaciones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Prestación de valor Para Editar
    * Esperar que el elemento CodigoPrestacion este visible
    * Llenar formulario:
      | CodigoPrestacion | 11       |
      | Valor            | 250      |
      | CodigoMoneda     | USD      |
      | FechaInicio      | 8/9/2021 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Prestación de valor Vacaciones 30 dias
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | PrestacionTexto | Vacaciones 30 dias |
      | Valor           | 250                |
      | MonedaTexto     | Dólares            |
      | FechaInicio     | 8/9/2021           |

  @test
  @Highest
  @PDS-6690
  Escenario: Eliminar una prestación de un puesto (PDS-6690)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/Prestaciones.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Prestación de valor Para eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Prestación del puesto eliminado correctamente
    
  @test
  @Highest
  @PDS-6682
  Escenario: Consultar una prestación de un puesto con información básica (PDS-6682)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/Prestaciones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 1                             |
      | PrestacionRO  | Para Consulta Archivo y Campo |
      | ValorRO       | 100.00                        |
      | MonedaRO      | Colones costarricenses        |
      | FechaInicioRO | 8/9/2021                      |

  @test
  @Highest
  @PDS-6693
  Escenario: Ver el listado de prestaciones de un puesto (PDS-6693)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/Prestaciones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-6691
  Escenario: Guardar una prestación de un puesto con los campos en blanco (PDS-6691)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/Prestaciones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La prestación es requerida
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida