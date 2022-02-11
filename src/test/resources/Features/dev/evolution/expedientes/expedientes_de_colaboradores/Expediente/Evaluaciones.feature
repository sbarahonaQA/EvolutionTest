# language: es

@expedientes
@expedientes_colaboradores
@evaluaciones
Característica: Evaluaciones
  Pruebas para entidad Evaluaciones

  @test
  @Highest
  @PDS-7445
  Escenario: Crear una evaluación en expedientes con información básica (PDS-7445)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Evaluaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Evaluaciones.json
    * Click a Nuevo
    * Esperar que el elemento esEmpleoEvaluador este visible
    * Llenar formulario:
      | esEmpleoEvaluador          | True                           |
      | codigoAlternativoEvaluador | 201132                         |
      | Fecha                      | 10/03/2022                     |
      | Nota                       | 100                            |
      | codigoNotaCualitativa      | Excepcional                    |
      | ComentarioEvaluador        | Para prueba de creación básica |
    * Click a Guardar
    * Esperar 4 segundos
    * Editar registro con columna Comentarios de valor Para prueba de creación básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | esEmpleoEvaluador              | True                           |
      | codigoAlternativoEvaluadorTexo | Bonilla, Norma Eilen           |
      | Fecha                          | 10/03/2022                     |
      | Nota                           | 100                            |
      | codigoNotaCualitativa          | Excepcional                    |
      | ComentarioEvaluador            | Para prueba de creación básica |

  @test
  @Highest
  @PDS-7450
  Escenario: Editar una evaluación en expedientes con información básica (PDS-7450)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Evaluaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Evaluaciones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Fecha de valor 15/9/2022
    * Esperar que el elemento Nota este visible
    * Llenar formulario:
      | Nota                  | 120.00         |
      | codigoNotaCualitativa | Aceptable      |
      | ComentarioEvaluador   | Prueba Editada |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar 4 segundos
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Comentarios de valor Prueba Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nota                  | 120.00         |
      | codigoNotaCualitativa | Aceptable      |
      | ComentarioEvaluador   | Prueba Editada |

  @test
  @Highest
  @PDS-7451
  Escenario: Eliminar una Evaluación en expedientes (PDS-7451)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Evaluaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Evaluaciones.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Fecha de valor 15/11/2021
    * Aceptar alerta
    # No hay mensaje para hacer validación

  @test
  @Highest
  @PDS-7443
  Escenario: Consultar una evaluación en expedientes con información básica (PDS-7443)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Evaluaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Evaluaciones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO            | 3                                 |
      | esEmpleoEvaluador   | True                              |
      | CodigoEvaluadorRO   | 201132 - Bonilla, Norma Eilen     |
      | FechaRO             | 3/9/2021                          |
      | NotaRO              | 100.00                            |
      | NotaCualitativaRO   | Excepcional                       |
      | ComentarioEvaluador | Para prueba de creación consultar |

  @test
  @Highest
  @PDS-7453
  Escenario: Ver el listado de una evaluación en expedientes en expedientes (PDS-7453)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Evaluaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Evaluaciones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7452
  Escenario: Guardar una evaluación en expedientes  con los campos en blanco (PDS-7452)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Evaluaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Evaluaciones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto The Fecha field is required.
    * Prueba exitosa si elemento MensajeError contiene texto El código de evaluador es requerido
