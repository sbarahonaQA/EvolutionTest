# language: es

@organizacion
@estructura_organizativa
@puestos
@condiciones_por_puesto
Característica: CondicionesPuesto
  Pruebas para entidad CondicionesPuesto

  @test
  @Highest
  @PDS-6582
  Escenario: Asociar una Condicion Laboral de un puesto (PDS-6582)
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
    * Click a CondicionLaboral
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CondicionesPuesto.json
    * Click a DesplegarTipoCondicionTrabajo1
    * Click a ParaConsultaDeCondicion
    * Click a AgregarCondicion
    * Click a GuardarCondiciones
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Condiciones del puesto guardados correctamente

  @test
  @Highest
  @PDS-6585
  Escenario: Desasociar una Condicion Laboral de un puesto (PDS-6585)
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
    * Click a CondicionLaboral
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CondicionesPuesto.json
    * Click a ChequeParaEliminarRelacionada
    * Click a EliminarCondicion
    * Aceptar alerta
    * Click a GuardarCondiciones
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Condiciones del puesto guardados correctamente

  @test
  @Highest
  @PDS-6586
  Escenario: Ver el listado de Condiciones Laborales de un puesto (PDS-6586)
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
    * Click a CondicionLaboral
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CondicionesPuesto.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | PanelIzquierdo | AgregarCondicion | EliminarCondicion | EliminarTodasCondiciones | Tabla | GuardarCondiciones | RegresarListado |

  @test
  @Highest
  @PDS-6584
  Escenario: Consultar una Condicion Laboral de un puesto con información básica (PDS-6584)
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
    * Click a CondicionLaboral
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/CondicionesPuesto.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoCondicionRO    | Lugar de trabajo |
      | CondicionTrabajoRO | Comedor          |