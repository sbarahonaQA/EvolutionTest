# language: es

@organizacion
@estructura_organizativa
@puestos
@cursos_y_certificaciones_por_puesto
Característica: CursosCertificacionesPuesto
  Pruebas para entidad CursosCertificacionesPuesto

  @test
  @Highest
  @PDS-6593
  Escenario: Crear una competencia tecnica de un puesto con información básica(PDS-6593)
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
    * Click a CursosCertificaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CursosCertificacionesPuestos.json
    * Click a NuevoCursoCertificacionPuesto
    * Esperar que el elemento Descripcion este visible
    * Llenar formulario:
      | Certificacion | False           |
      | Descripcion   | Creacion Basica |
      | Requerido     | True            |
      | Orden         | 1               |
      | Validez       | False           |
      | Modalidad     | Presencial      |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar 4 segundos
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Curso de valor Creacion Basica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Certificacion | False           |
      | Descripcion   | Creacion Basica |
      | Requerido     | True            |
      | Orden         | 1               |
      | Validez       | False           |
      | Modalidad     | Presencial      |

  @test
  @Highest
  @PDS-6597
  Escenario: Editar un curso y certificación técnica de un puesto con información básica (PDS-6597)
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
    * Click a CursosCertificaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CursosCertificacionesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Curso de valor Para Editar
    * Esperar que el elemento Certificacion este visible
    * Llenar formulario:
      | Certificacion | False          |
      | Descripcion   | Prueba Editada |
      | Requerido     | True           |
      | Orden         | 1              |
      | Validez       | False          |
      | Modalidad     | Presencial     |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Curso de valor Prueba Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      #| Codigo        | 5              |
      | Certificacion | False          |
      | Descripcion   | Prueba Editada |
      | Requerido     | True           |
      | Orden         | 1              |
      | Validez       | False          |
      | Modalidad     | Presencial     |

  @test
  @Highest
  @PDS-6598
  Escenario: Eliminar un curso y certificación técnica de un puesto (PDS-6598)
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
    * Click a CursosCertificaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CursosCertificacionesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Curso de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Certificación para el puesto eliminada correctamente

  @test
  @Highest
  @PDS-6590
  Escenario: Consultar un curso y certificación técnica de un puesto con información básica (PDS-6590)
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
    * Click a CursosCertificaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CursosCertificacionesPuestos.json
    * Esperar que el elemento Tabla este visible
    #No se puede realizar la consulta ya que es de link text
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Certificacion | False          |
      | Descripcion   | Para Consultas |
      | Requerido     | True           |
      | Orden         | 1              |
      | Validez       | False          |
      | Modalidad     | Presencial     |


  @test
  @Highest
  @PDS-6580
  Escenario: Ver el listado un curso y certificación técnica de un puesto(PDS-6580)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CursosCertificaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CursosCertificacionesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | NuevoCursoCertificacionPuesto | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-6599
  Escenario: Guardar un curso y certificación técnica de un puesto con los campos en blanco (PDS-6599)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Prueba de Consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CursosCertificaciones
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CursosCertificacionesPuestos.json
    * Click a NuevoCursoCertificacionPuesto
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La descripción es requerida