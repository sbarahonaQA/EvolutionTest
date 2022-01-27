# language: es

@organizacion
@estructura_organizativa
@puestos
@CurriculumCompetenciasCurriculares
Característica: Curriculum Competencias Curriculares
  Pruebas para entidad Curriculum Competencias Curriculares

  @test
  @Highest
  @PDS-7524
  Escenario: Crear una habilidad en expedientes con información básica (PDS-7524)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Boris
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Esperar 3 segundos
    * Click a CurriculumCompetenciasCurriculares
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
    * Click a Nuevo
    * Esperar 3 segundos
    * Llenar formulario:
      | CodigoTipoRequisito   | Área de Estudio   |
      | CodigoRequisito       | Area de trabajo Social |
      | Dominio               | Medio |
      | Metrico               | 75 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Requisito de valor Area de Agronomía
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoTipoRequisito   | Área de Estudio   |
      | CodigoRequisito       | Area de trabajo Social  |
      | Dominio               | Medio |
      | Metrico               | 75 |

  @test
  @Highest
  @PDS-7528
  Escenario: Editar una habilidad en expedientes con información básica(PDS-7528)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCompetenciasCurriculares
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Requisito de valor Hidráulica
    * Esperar 3 segundos
    * Llenar formulario:
      | CodigoTipoRequisito   | Experiencia Requerida  |
      | CodigoRequisito       | Tres años |
      | Dominio               | Medio |
      | TiempoExperiencia     | Prueba |
      | Metrico               | 75 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Requisito de valor Experiencia Requerida
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoTipoRequisito   | Experiencia Requerida  |
      | CodigoRequisito       | Tres años |
      | Dominio               | Medio |
      | TiempoExperiencia     | Prueba |
      | Metrico               | 75 |

  @test
  @Highest
  @PDS-7529
  Escenario: Eliminar una habilidad en expedientes (PDS-7529)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Boris Fernando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
    * Esperar que el elemento Tabla este visible
    * Esperar 3 segundos
    * Eliminar registro con columna Requisito de valor Prueba de Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Habilidad del empleo eliminada correctamente

  @test
  @Highest
  @PDS-7521
  Escenario: Consultar una habilidad en expedientes con información básica (PDS-7521)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Esperar 3 segundos
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                | 4 |
      | CodigoTipoRequisitoRO   | Área de Estudio  |
      | CodigoRequisitoRO       | Prueba de Requisitos |
      | DominioRO               | Medio |
      | TiempoExperienciaRO     | Prueba |
      | MetricoRO               | 75 |

  @test
  @Highest
  @PDS-6693
  Escenario: Ver el listado de Capacitacion del expediente de un puesto (PDS-6693)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Esperar 2 segundos
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
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
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
    * Click a Nuevo
    * Esperar 2 segundos
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El valor métrico debe de ser mayor que 0
    * Prueba exitosa si elemento MensajeError contiene texto El Requisito es requerido