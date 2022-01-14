# language: es

@organizacion
@estructura_organizativa
@puestos
@funciones_generales
Característica: FuncionesGenerales
  Pruebas para entidad FuncionesGenerales

  @test
  @Highest
  @PDS-6636
  Escenario: Asociar una función General de un puesto (PDS-6636)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesGenerales.json
    * Click a ControlDeCalidad
    * Click a AgregarFuncion
    * Click a GuardarFunciones
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Las funciones generales han sido guardadas con éxito

  @test
  @Highest
  @PDS-6639
  Escenario: Desasociar una función general de un puesto (PDS-6639)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesGenerales.json
    * Click a ChequeOperativas
    * Click a EliminarFuncion
    * Aceptar alerta
    * Click a GuardarFunciones
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Las funciones generales han sido guardadas con éxito

  @test
  @Highest
  @PDS-6640
  Escenario: Ver el listado de Funciones Generales de un puesto (PDS-6640)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesGenerales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | PanelIzquierdo | AgregarFuncion | EliminarFuncion | EliminarTodasFunciones | Tabla | GuardarFunciones | RegresarListado |

  @test
  @Highest
  @PDS-6638
  Escenario: Consultar una Funciones Generales de un puesto con información básica (PDS-6638)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a FuncionesGenerales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesGenerales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoFuncionRO | Generales             |
      | FuncionRO     | Para Consulta (Anual) |