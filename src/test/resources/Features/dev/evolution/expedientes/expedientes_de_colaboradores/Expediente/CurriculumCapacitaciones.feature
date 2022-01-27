# language: es

@organizacion
@estructura_organizativa
@puestos
@CurriculumCompetenciasCurriculares
Característica: Curriculum Competencias Curriculares
  Pruebas para entidad Curriculum Competencias Curriculares

  @test
  @Highest
  @PDS-7511
  Escenario: Crear una Competencias Curricular en expedientes con toda la información (PDS-7511)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 	Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCompetenciasCurriculares
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCompetenciasCurriculares.json
    * Click a Nuevo
    * Esperar 3 segundos
    * Llenar formulario:
      | NombreDeCapacitación   | Informacion completa     |
      | codigoTipoEvento       | Administrativa      |
      | FechaInicio       | 8/3/2022 |
      | FechaFin          | 13/3/2022 |
      | codigoPais        | gt |
      | Duracion          | 5  |
      | UnidadDeDuracion  | Día |
      | Costo             | 375 |
      | codigoMoneda      | Quetzales |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Fecha de valor 8/3/2022 - 13/3/2022
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreDeCapacitación   | Informacion completa     |
      | codigoTipoEvento       | Administrativa           |
      | FechaInicio            | 8/3/2022  |
      | FechaFin               | 13/3/2022 |
      | codigoPais             | gt |
      | Duracion               | 5  |
      | UnidadDeDuracion       | Día |
      | Costo                  | 375 |
      | codigoMoneda           | Quetzales |

  @test
  @Highest
  @PDS-7513
  Escenario: Editar una Capacitacion de Expediente con información básica (PDS-7513)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 	Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCapacitaciones
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCapacitaciones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Fecha de valor 2/9/2022 - 2/9/2022
    * Esperar 3 segundos
    * Llenar formulario:
      | NombreDeCapacitación   | Registro Editado    |
      | codigoTipoEvento       | Internas     |
      | Descripcion            | Editado |
      | Tema                   | Editado |
      | Institucion            | Editado  |
      | Instructores           | Editado |
      | Nota                   | 100 |
      | FechaInicio            | 15/3/2022 |
      | FechaFin               | 20/3/2022 |
      | codigoPais             | gt |
      | Duracion               | 5  |
      | UnidadDeDuracion       | Día |
      | Costo                  | 750 |
      | codigoMoneda           | Quetzales |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Fecha de valor 15/3/2022 - 20/3/2022
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreDeCapacitación   | Registro Editado    |
      | codigoTipoEvento       | Internas     |
      | Descripcion            | Editado |
      | Tema                   | Editado |
      | Institucion            | Editado  |
      | Instructores           | Editado |
      | Nota                   | 100 |
      | FechaInicio            | 15/3/2022 |
      | FechaFin               | 20/3/2022 |
      | codigoPais             | gt |
      | Duracion               | 5  |
      | UnidadDeDuracion       | Día |
      | Costo                  | 750 |
      | codigoMoneda           | Quetzales |

  @test
  @Highest
  @PDS-7514
  Escenario: Eliminar una Capacitacion del expediente (PDS-7514)
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
    * Click a CurriculumCapacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCapacitaciones.json
    * Esperar que el elemento Tabla este visible
    * Esperar 3 segundos
    * Eliminar registro con columna Fecha de valor 4/3/2022 - 4/3/2022
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La capacitación del expediente ha sido eliminada correctamente

  @test
  @Highest
  @PDS-7507
  Escenario: Consultar una Capacitacion del expediente con información básica (PDS-7507)
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
    * Click a CurriculumCapacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCapacitaciones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Esperar 3 segundos
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                 | 4 |
      | NombreDeCapacitaciónRO   | Para prueba de consultar |
      | codigoTipoEventoRO       | Tecnicas     |
      | DescripcionRO            | Pds-7507 |
      | TemaRO                   | Tema |
      | InstitucionRO            | Institucion  |
      | InstructoresRO           | Instructor |
      | NotaRO                   | 100 |
      | FechaInicioRO            | 2/2/2022 00:00:00 |
      | FechaFinRO               | 2/2/2022 00:00:00 |
      | DuracionRO               | 18.00 Hora|
      | CostoRO                  | 580.00 Quetzales |

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino  Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumCapacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCapacitaciones.json
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
    * Click a CurriculumCapacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumCapacitaciones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La duración del evento debe ser un numero mayor que cero