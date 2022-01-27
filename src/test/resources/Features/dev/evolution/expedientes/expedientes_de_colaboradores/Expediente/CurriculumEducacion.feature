# language: es

@organizacion
@estructura_organizativa
@puestos
@CurriculumEducacion
Característica: Curriculum Educacion
  Pruebas para entidad Curriculum Educacion

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Esperar 3 segundos
    * Click a CurriculumEducacion
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumEducacion.json
    * Click a Nuevo
    * Esperar 3 segundos
    * Llenar formulario:
      | Situacion           | Estudiante |
      | TituloObtenido      | Para Creacion Basica |
      | codigoTipoEstudio   | TECNICO |
      | codigoCarrera       | TEC. EN COMPUTACION |
      | codigoPais          | GT  |
      | EstudianteActivo    | FALSE |
      | anhoInicio          | 2018 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Título obtenido de valor Para Creacion Basica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Situacion           | Graduado  |
      | TituloObtenido      | Para Creacion Basica |
      | codigoTipoEstudio   | TECNICO |
      | codigoCarrera       | TEC. EN COMPUTACION |
      | codigoPais          | GT  |
      | EstudianteActivo    | FALSE |
      | anhoInicio          | 2018 |

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumEducacion
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumEducacion.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Título obtenido de valor Para Editar
    * Esperar 3 segundos
    * Llenar formulario:
      | Situacion           | Graduado  |
      | TituloObtenido      | Para Editado |
      | codigoTipoEstudio   | UNIVERSITARIO |
      | codigoCarrera       | PROFESORADO |
      | codigoPais          | sv  |
      | EstudianteActivo    | true |
      | anhoInicio          | 2018 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Título obtenido de valor Para Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Situacion           | Graduado  |
      | TituloObtenido      | Para Editado |
      | codigoTipoEstudio   | UNIVERSITARIO |
      | codigoCarrera       | PROFESORADO |
      | codigoPais          | sv  |
      | EstudianteActivo    | true |
      | anhoInicio          | 2018 |

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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumEducacion.json
    * Esperar que el elemento Tabla este visible
    * Esperar 3 segundos
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumEducacion.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Esperar 3 segundos
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO            | 5  |
      | SituacionRO         | Graduado  |
      | TituloObtenidoRO    | Para Consultar |
      | TipoEstudioRO       | BACHILLERATO |
      | CarreraRO           | Para Consultar Archivo y Adicional |
      | PaisRO              | Estados Unidos  |
      | EstudianteActivoRO  | NO |
      | FechaInicialRO      | 2021|

  @test
  @Highest
  @PDS-7531
  Escenario: Ver el listado de Habilidades del expediente de un puesto (PDS-7531)
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
    * Click a CurriculumEducacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumEducacion.json
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