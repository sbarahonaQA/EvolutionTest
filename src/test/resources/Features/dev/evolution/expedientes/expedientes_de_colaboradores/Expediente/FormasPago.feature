# language: es

@expedientes
@expedientes_colaboradores
@formaspago
Característica: FormasPago
  Pruebas para entidad FormasPago


  @test
  @Highest
  @PDS-7461
  Escenario: Crear una forma de pago en expedientes con información básica (PDS-7461)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100217
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a FormasPago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/FormasPago.json
    * Click a Nuevo
    * Esperar que el elemento FormaPago este visible
    * Llenar formulario:
      | FormaPago      | Efectivo   |
      | AplicacionPago | Porcentaje |
      | Porcentaje     | 50         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Forma de pago de valor Efectivo
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | FormaPago      | Efectivo   |
      | AplicacionPago | Porcentaje |
      | Porcentaje     | 50         |

  @test
  @Highest
  @PDS-7465
  Escenario: Editar una forma de pago en expedientes con información básica (PDS-7465)
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
    * Click a FormasPago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/FormasPago.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Forma de pago de valor Boleta
    * Esperar que el elemento FormaPago este visible
    * Llenar formulario:
      | FormaPago      | Transferencia Bancaria        |
      | CuentaBanco    | 24256 (GT - BANCO INDUSTRIAL) |
      | EstaVigente    | True                          |
      | AplicacionPago | Porcentaje                    |
      | Porcentaje     | 5.0000                        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Forma de pago de valor Transferencia Bancaria
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | FormaPago      | Transferencia Bancaria        |
      | CuentaBanco    | 24256 (GT - BANCO INDUSTRIAL) |
      | EstaVigente    | True                          |
      | AplicacionPago | Porcentaje                    |
      | Porcentaje     | 5.0000                        |

  @test
  @Highest
  @PDS-7466
  Escenario: Eliminar una forma de pago en expedientes (PDS-7466)
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
    * Click a FormasPago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/FormasPago.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Forma de pago de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La forma de pago fue eliminada correctamente

  @test
  @Highest
  @PDS-7457
  Escenario: Consultar una forma de pago en expedientes con información básica (PDS-7457)
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
    * Click a FormasPago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/FormasPago.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 411        |
      | FormaPagoRO   | Cheque     |
      | EstaVigenteRO | Sí         |
      | AccionPagoRO  | Porcentaje |
      | PorcentajeRO  | 25.00      |

  @test
  @Highest
  @PDS-7468
  Escenario: Ver el listado de una forma de pago en expedientes en expedientes (PDS-7468)
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
    * Click a FormasPago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/FormasPago.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7467
  Escenario: Guardar una forma de pago en expedientes con los campos en blanco (PDS-7467)
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
    * Click a FormasPago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/FormasPago.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La forma de pago que desea crear ya existe
