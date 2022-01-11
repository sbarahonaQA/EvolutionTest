# language: es

@organizacion
@estructura_organizativa
@puestos
@equipos_por_puesto
Característica: EquiposPuesto
  Pruebas para entidad EquiposPuesto

  @test
  @Highest
  @PDS-6607
  Escenario: Consultar un Equipo o dotacion de un puesto con información básica (PDS-6607)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 1              |
      | EquipoRO      | para consulta  |
      | ObservacionRO | Para Consultas |

  @test
  @Highest
  @PDS-6610
  Escenario: Crear un Equipo o dotacion de un puesto con información básica (PDS-6610)
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
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Click a NuevoEquipo
    * Esperar que el elemento Equipo este visible
    * Llenar formulario:
      | Equipo      | Teléfono          |
      | Observacion | Para Crear Básico |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Observación de valor Para Crear Básico
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Equipo      | Teléfono          |
      | Observacion | Para Crear Básico |

  @test
  @Highest
  @PDS-6614
  Escenario: Editar un Equipo o dotacion de un puesto con información básica (PDS-6614)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Observación de valor Para Editar
    * Esperar que el elemento Equipo este visible
    * Llenar formulario:
      | Equipo      | Fax            |
      | Observacion | Prueba Editada |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Observación de valor Prueba Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      #| Codigo        | 2              |
      | Equipo      | Fax            |
      | Observacion | Prueba Editada |

  @test
  @Highest
  @PDS-6615
  Escenario: Eliminar un Equipo o dotacion de un puesto (PDS-6615)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Observación de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Equipo del puesto eliminado correctamente

  @test
  @Highest
  @PDS-6616
  Escenario: Guardar un Equipo o dotacion de un puesto con los campos en blanco (PDS-6616)
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
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Click a NuevoEquipo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El equipo es requerido

  @test
  @Highest
  @PDS-6618
  Escenario: Ver el listado un Equipo o dotacion de un puesto (PDS-6618)
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
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | NuevoEquipo | Tabla | RegresarListado |