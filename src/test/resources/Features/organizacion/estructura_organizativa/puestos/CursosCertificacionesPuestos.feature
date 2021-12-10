# language: es

@organizacion
@estructura_organizativa
@cursos_y_certificaciones_por_puesto
Característica: CursosCertificacionesPuesto
  Pruebas para entidad CursosCertificacionesPuesto

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