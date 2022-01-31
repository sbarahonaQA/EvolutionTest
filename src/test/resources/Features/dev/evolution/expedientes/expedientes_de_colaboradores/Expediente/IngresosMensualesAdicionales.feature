# language: es

@expedientes
@expedientes_colaboradores
@ingresosmensualesadicionales
Característica: IngresosMensualesAdicionales
  Pruebas para entidad IngresosMensualesAdicionales


  @test
  @Highest
  @PDS-7613
  Escenario: Crear un ingreso mensual adicional en expedientes (PDS-7613)
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
    * Click a IngresosMensualesAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/IngresosMensualesAdicionales.json
    * Click a Nuevo
    * Esperar que el elemento Tipo este visible
    * Llenar formulario:
      | Tipo               | Otros ingresos |
      | ActividadEconomica | Prueba Básica  |
      | Valor              | 465.00         |
      | codigoMoneda       | Dólares        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Actividad económica de valor Prueba Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Tipo               | Otros ingresos |
      | ActividadEconomica | Prueba Básica  |
      | Valor              | 465.00         |
      | codigoMoneda       | Dólares        |

  @test
  @Highest
  @PDS-7618
  Escenario: Editar un ingreso mensual adicional en expedientes con información básica (PDS-7618)
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
    * Click a IngresosMensualesAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/IngresosMensualesAdicionales.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Actividad económica de valor Editar
    * Esperar que el elemento Tipo este visible
    * Llenar formulario:
      | Tipo               | Salario mensual |
      | ActividadEconomica | Prueba Editada  |
      | Valor              | 835.00          |
      | codigoMoneda       | Dólares         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Actividad económica de valor Prueba Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Tipo               | Salario mensual |
      | ActividadEconomica | Prueba Editada  |
      | Valor              | 835.00          |
      | codigoMoneda       | Dólares         |

  @test
  @Highest
  @PDS-7619
  Escenario: Eliminar un ingreso mensual adicional en expedientes (PDS-7619)
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
    * Click a IngresosMensualesAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/IngresosMensualesAdicionales.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Actividad económica de valor ELIMINAR
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Ingreso menusal adicional eliminado correctamente

  @test
  @Highest
  @PDS-7612
  Escenario: Consultar un ingreso mensual adicional en expedientescon información básica (PDS-7612)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a IngresosMensualesAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/IngresosMensualesAdicionales.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      #| CodigoRO             | 4               |
      | TipoRO               | Salario Mensual |
      | ActividadEconomicaRO | Para Consultar  |
      | ValorRO              | 350.00          |
      | MonedaRO             | Dólares         |

  @test
  @Highest
  @PDS-7621
  Escenario: Ver el listado de ingresos mensuales adicionales en expedientes (PDS-7621)
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
    * Click a IngresosMensualesAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/IngresosMensualesAdicionales.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7620
  Escenario: Guardar un ingreso mensual adicional en expedientes con los campos en blanco (PDS-7620)
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
    * Click a IngresosMensualesAdicionales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/IngresosMensualesAdicionales.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El tipo es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El valor debe de ser mayor que cero
    * Prueba exitosa si elemento MensajeError contiene texto La actividad economica es requerida
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerido