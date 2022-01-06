# language: es

@organizacion
@estructura_organizativa
@toma_de_decisiones
Característica: TomaDecisiones
  Pruebas para entidad TomaDecisiones

  @test
  @Highest
  @PDS-6748
  Escenario: Crear una toma de decisión de puesto con información básica (PDS-6748)
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
    * Click a TomaDecisiones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/TomaDecisiones.json
    * Click a Nuevo
    * Esperar que el elemento Comentario este visible
    * Llenar formulario:
      | Comentario    | Creación Básica     |
      | NivelDecision | Propone la decisión |
      | Orden         | 10                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Comentario de valor Creación Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Comentario    | Creación Básica     |
      | NivelDecision | Propone la decisión |
      | Orden         | 10                  |

  @test
  @Highest
  @PDS-6753
  Escenario: Editar una toma de decisión de puesto con información básica (PDS-6753)
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
    * Click a TomaDecisiones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/TomaDecisiones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Comentario de valor Para Editar
    * Esperar que el elemento Comentario este visible
    * Llenar formulario:
      | Comentario    | Creación Editada    |
      | NivelDecision | Propone la decisión |
      | Orden         | 25                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Comentario de valor Creación Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Comentario    | Creación Editada    |
      | NivelDecision | Propone la decisión |
      | Orden         | 25                  |

  @test
  @Highest
  @PDS-6754
  Escenario: Eliminar una toma de decisión de puesto (PDS-6754)
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
    * Click a TomaDecisiones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/TomaDecisiones.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Comentario de valor Para eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Toma de decisión eliminada correctamente

  @test
  @Highest
  @PDS-6747
  Escenario: Consultar una toma de decisión de puesto con información básica (PDS-6747)
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
    * Click a TomaDecisiones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/TomaDecisiones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 3                |
      | ComentarioRO    | Para consultar   |
      | NivelDecisionRO | Toma la decisión |
      | OrdenRO         | 0                |

  @test
  @Highest
  @PDS-6756
  Escenario: Ver el listado de toma de decisiones de puesto (PDS-6756)
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
    * Click a TomaDecisiones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/TomaDecisiones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-6755
  Escenario: Guardar un toma de decisión de puesto con los campos en blanco (PDS-6755)
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
    * Click a TomaDecisiones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/TomaDecisiones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El nivel de decisión es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El comentario es requerido