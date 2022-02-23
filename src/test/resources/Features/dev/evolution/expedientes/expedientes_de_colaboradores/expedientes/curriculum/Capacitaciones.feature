# language: es

@expedientes
@expedientes_colaboradores
@expedientes
@curriculum
@capacitaciones_expediente
Característica: CapacitacionesExpediente
  Pruebas para entidad CapacitacionesExpediente (Capacitaciones impartidas al expediente)

  @test
  @Highest
  @PDS-5001
  Escenario: Crear Nueva capacitación en expediente (informacion basica) (PDS-5001)
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
    * Click a Capacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Capacitaciones.json
    * Click a Nuevo
    * Esperar que el elemento NombreDeCapacitación este visible
    * Llenar formulario:
      | NombreDeCapacitación | Excel avanzado |
      | codigoTipoEvento     | Informatica    |
      | FechaInicio          | 18/02/2021     |
      | FechaFin             | 18/02/2021     |
      | codigoPais           | sv             |
      | Duracion             | 4              |
      | UnidadDeDuracion     | Hora           |
      | Costo                | 400            |
      | codigoMoneda         | Dólares        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento TablaFinalizado este visible
    * Editar registro de TablaFinalizado con columna Fecha de valor 18/2/2021 - 18/2/2021
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreDeCapacitación | Excel avanzado |
      | codigoTipoEvento     | Informatica    |
      | FechaInicio          | 18/02/2021     |
      | FechaFin             | 18/02/2021     |
      | Pais                 | El Salvador    |
      | Duracion             | 4              |
      | UnidadDeDuracion     | Hora           |
      | Costo                | 400            |
      | codigoMoneda         | Dólares        |

  @test
  @Highest
  @PDS-7513
  Escenario: Editar una capacitación en expedientes con información básica (PDS-7513)
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
    * Click a Capacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Capacitaciones.json
    * Esperar que el elemento TablaProgramado este visible
    * Editar registro de TablaProgramado con columna Fecha de valor 2/9/2022 - 2/9/2022
    * Esperar que el elemento NombreDeCapacitación este visible
    * Llenar formulario:
      | NombreDeCapacitación    | Registro Editado      |
      | codigoTipoEvento        | Internas              |
      | Descripcion             | Descripcion editada   |
      | Tema                    | Tema editado          |
      | Institucion             | Institucion editada   |
      | Instructores            | Instructores editados |
      | Nota                    | 100                   |
      | FechaInicio             | 12/9/2021             |
      | FechaFin                | 12/9/2021             |
      | EsImpartidaInternamente | True                  |
      | EsImpartidaLocalmente   | True                  |
      | Duracion                | 18                    |
      | UnidadDeDuracion        | Hora                  |
      | Costo                   | 475                   |
      | codigoMoneda            | Quetzales             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento TablaFinalizado este visible
    * Editar registro de TablaFinalizado con columna Fecha de valor 12/9/2021 - 12/9/2021
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreDeCapacitación    | Registro Editado      |
      | codigoTipoEvento        | Internas              |
      | Descripcion             | Descripcion editada   |
      | Tema                    | Tema editado          |
      | Institucion             | Institucion editada   |
      | Instructores            | Instructores editados |
      | Nota                    | 100                   |
      | FechaInicio             | 12/9/2021             |
      | FechaFin                | 12/9/2021             |
      | EsImpartidaInternamente | True                  |
      | EsImpartidaLocalmente   | True                  |
      | Duracion                | 18                    |
      | UnidadDeDuracion        | Hora                  |
      | Costo                   | 475                   |
      | codigoMoneda            | Quetzales             |

  @test
  @Highest
  @PDS-7514
  Escenario: Eliminar una capacitación en expedientes (PDS-7514)
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
    * Click a Capacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Capacitaciones.json
    * Esperar que el elemento TablaProgramado este visible
    * Eliminar registro de TablaProgramado con columna Fecha de valor 2/8/2022 - 2/8/2022
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La capacitación del expediente ha sido eliminada correctamente

  @test
  @Highest
  @PDS-7507
  Escenario: Consultar una capacitación en expedientes con información básica (PDS-7507)
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
    * Click a Capacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Capacitaciones.json
    * Esperar que el elemento RegistroConsultar este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO               | 4                        |
      | NombreDeCapacitaciónRO | Para prueba de consultar |
      | codigoTipoEventoRO     | Tecnicas                 |
      | DescripcionRO          | Pds-7507                 |
      | TemaRO                 | Tema                     |
      | InstitucionRO          | Institucion              |
      | InstructoresRO         | Instructor               |
      | NotaRO                 | 100                      |
      | FechaInicioRO          | 2/2/2022 00:00:00        |
      | FechaFinRO             | 2/2/2022 00:00:00        |
      | DuracionRO             | 18.00 Hora               |
      | CostoRO                | 580.00 Quetzales         |

  @test
  @Highest
  @PDS-7516
  Escenario: Ver el listado de capacitaciones de expedientes (MostrarSolamenteCapacitacionesAprobadasEnExpediente = FALSO) (PDS-7516)
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
    * Click a Capacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Capacitaciones.json
    * Esperar que el elemento TablaProgramado este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | TablaProgramado | RegresarListado |


  @test
  @Highest
  @PDS-7515
  Escenario: Guardar una capacitación en expedientes con los campos en blanco (PDS-7515)
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
    * Click a Capacitaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expedientes/curriculum/Capacitaciones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La duración del evento debe ser un numero mayor que cero
    * Prueba exitosa si elemento MensajeError contiene texto El costo total debe ser un numero mayor o igual que cero.
    * Prueba exitosa si elemento MensajeError contiene texto El País no debe estar vacío