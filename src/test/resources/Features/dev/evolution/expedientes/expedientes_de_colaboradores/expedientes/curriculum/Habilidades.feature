# language: es

@expedientes
@expedientes_colaboradores
@expedientes
@curriculum
@habilidades_empleos
Característica: HabilidadesEmpleos
  Pruebas para entidad HabilidadesEmpleos (Habilidades del empleado)

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Habilidades.json
    * Click a Nuevo
    * Esperar que el elemento TipoRequisito este visible
    * Llenar formulario:
      | TipoRequisito | Área de Estudio   |
      | Requisito     | Area de Agronomía |
      | Dominio       | Medio             |
      | Metrico       | 75                |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Requisito de valor Area de Agronomía
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoRequisito | Área de Estudio   |
      | Requisito     | Area de Agronomía |
      | Dominio       | Medio             |
      | Metrico       | 75                |

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Habilidades.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Requisito de valor Hidráulica
    * Llenar formulario:
      | TipoRequisito     | Experiencia Requerida |
      | Requisito         | Tres años             |
      | Dominio           | Medio                 |
      | TiempoExperiencia | Prueba                |
      | Metrico           | 100                   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Requisito de valor Tres años
    * Esperar que el elemento Requisito este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoRequisito     | Experiencia Requerida |
      | Requisito         | Tres años             |
      | Dominio           | Medio                 |
      | TiempoExperiencia | Prueba                |
      | Metrico           | 100                   |

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Habilidades.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Requisito de valor Para eliminar
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Habilidades.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO            | 4                    |
      | TipoRequisitoRO     | Área de Estudio      |
      | RequisitoRO         | Prueba de Requisitos |
      | DominioRO           | Medio                |
      | TiempoExperienciaRO | 15 meses             |
      | MetricoRO           | 75                   |

  @test
  @Highest
  @PDS-7531
  Escenario: Ver el listado una habilidad en expedientes en expedientes (PDS-7531)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Habilidades.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7530
  Escenario: Guardar una habilidad en expedientes con los campos en blanco (PDS-7530)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasCurriculares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Habilidades.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El valor métrico debe de ser mayor que 0
    * Prueba exitosa si elemento MensajeError contiene texto El Requisito es requerido