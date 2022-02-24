# language: es

@expedientes
@expedientes_colaboradores
@expedientes
@curriculum
@educacion_expedientes
Característica: EducacionExpedientes
  Pruebas para entidad EducacionExpedientes (Estudios del expediente)

  @test
  @Highest
  @PDS-7539
  Escenario: Crear una educación en expedientes con información básica (PDS-7539)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Educacion.json
    * Click a Nuevo
    * Llenar formulario:
      | Situacion        | Graduado             |
      | TituloObtenido   | Para Creacion Basica |
      | TipoEstudio      | TECNICO              |
      | Carrera          | TEC. EN COMPUTACION  |
      | codigoPais       | gt                   |
      | EstudianteActivo | FALSE                |
      | anhoInicio       | 2018                 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Título obtenido de valor Para Creacion Basica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Situacion        | Graduado             |
      | TituloObtenido   | Para Creacion Basica |
      | TipoEstudio      | TECNICO              |
      | Carrera          | TEC. EN COMPUTACION  |
      | Pais             | Guatemala            |
      | EstudianteActivo | FALSE                |
      | anhoInicio       | 2018                 |

  @test
  @Highest
  @PDS-7543
  Escenario: Editar una educación en expedientes con información básica (PDS-7543)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Educacion.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Título obtenido de valor Para Editar
    * Llenar formulario:
      | Situacion        | Graduado      |
      | TituloObtenido   | Para Editado  |
      | TipoEstudio      | UNIVERSITARIO |
      | Carrera          | PROFESORADO   |
      | codigoPais       | sv            |
      | EstudianteActivo | true          |
      | anhoInicio       | 2018          |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Título obtenido de valor Para Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Situacion        | Graduado      |
      | TituloObtenido   | Para Editado  |
      | TipoEstudio      | UNIVERSITARIO |
      | Carrera          | PROFESORADO   |
      | Pais             | El Salvador   |
      | EstudianteActivo | true          |
      | anhoInicio       | 2018          |

  @test
  @Highest
  @PDS-7544
  Escenario: Eliminar una educación en expedientes (PDS-7544)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Educacion.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Título obtenido de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Educación del expediente eliminado correctamente

  @test
  @Highest
  @PDS-7536
  Escenario: Consultar una educación en expedientes con información básica (PDS-7536)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Educacion.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 5                                  |
      | SituacionRO        | Graduado                           |
      | TituloObtenidoRO   | Para Consultar                     |
      | TipoEstudioRO      | BACHILLERATO                       |
      | CarreraRO          | Para Consultar Archivo y Adicional |
      | PaisRO             | Estados Unidos                     |
      | EstudianteActivoRO | No                                 |
      | FechaInicialRO     | 2021                               |

  @test
  @Highest
  @PDS-7546
  Escenario: Ver el listado educaciones en expedientes (PDS-7546)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Educacion.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7545
  Escenario: Guardar una educación en expedientes con los campos en blanco (PDS-7545)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Educacion.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El título obtenido es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El país es requerido