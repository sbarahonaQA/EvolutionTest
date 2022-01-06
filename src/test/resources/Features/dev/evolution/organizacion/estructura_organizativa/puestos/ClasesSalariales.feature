# language: es

@organizacion
@estructura_organizativa
@clases_salariales
Característica: ClasesSalariales
  Pruebas para entidad ClasesSalariales

  @test
  @Highest
  @PDS-6547
  Escenario: Crear una clase salarial de un puesto con información básica (PDS-6547)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Pruebas EVO-1957 (Modificacion de datos)
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/ClasesSalariales.json
    * Click a Nuevo
    * Esperar que el elemento ClaseSalarial este visible
    * Llenar formulario:
      | ClaseSalarial | GRADO I |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    # Se esperan 3 segundos antes de buscar en la tabla porque la tabla siempre está presete, pero se debe acutalizar y esto dura en promedio 3 segundos
    * Esperar 3 segundos
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Clase salarial de valor GRADO I
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | ClaseSalarial | GRADO I |

  @test
  @Highest
  @PDS-6551
  Escenario: Editar una clase salarial de un puesto con información básica (PDS-6551)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Puesto
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/ClasesSalariales.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Comentario de valor Para editar
    * Esperar que el elemento Comentario este visible
    * Llenar formulario:
      | Comentario | Clase salarial de puesto editada |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    # Se esperan 3 segundos antes de buscar en la tabla porque la tabla siempre está presete, pero se debe acutalizar y esto dura en promedio 3 segundos
    * Esperar 3 segundos
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Comentario de valor Clase salarial de puesto editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | ClaseSalarial | GRADO V                          |
      | Comentario    | Clase salarial de puesto editada |

  @test
  @Highest
  @PDS-6552
  Escenario: Eliminar una clase salarial de un puesto (PDS-6552)
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
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/ClasesSalariales.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Comentario de valor PARA ELIMINAR
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La clase salarial de puesto fue eliminada correctamente

  @test
  @Highest
  @PDS-6544
  Escenario: Consultar una clase salarial de un puesto con información básica (PDS-6544)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Puesto
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/ClasesSalariales.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 4                           |
      #| ClaseSalarialRO | Clase Salarial para Edición |
      | Comentario      | Para consultar              |

  @test
  @Highest
  @PDS-6555
  Escenario: Ver el listado un Equipo o dotacion de un puesto (PDS-6555)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Pruebas EVO-1957 (Modificacion de datos)
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/ClasesSalariales.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-6553
  Escenario: Guardar una clase salarial de un puesto con los campos en blanco (PDS-6553)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Pruebas EVO-1957 (Modificacion de datos)
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/ClasesSalariales.json
    * Click a Nuevo
    * Esperar que el elemento ClaseSalarial este visible
    * Llenar formulario:
      | ClaseSalarial | GRADO V |
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto Ya existe una clase salarial para el puesto con el mismo ambito y tipo de valuación