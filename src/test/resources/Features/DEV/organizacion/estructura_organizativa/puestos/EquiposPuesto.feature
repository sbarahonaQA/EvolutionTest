# language: es

@organizacion
@estructura_organizativa
@equipos_por_puesto
Característica: EquiposPuesto
  Pruebas para entidad EquiposPuesto

  @test
  @Highest
  @PDS-6614
  Escenario: Editar un Equipo o dotacion de un puesto con información básica (PDS-6614)
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
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/EquiposPuesto.json
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
    * Click a EquiposPuesto
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/EquiposPuesto.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Observación de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Equipo del puesto eliminado correctamente