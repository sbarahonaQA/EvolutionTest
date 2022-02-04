# language: es

@expedientes
@expedientes_colaboradores
@cuentasbancarias
Característica: CuentasBancarias
  Pruebas para entidad CuentasBancariasExpedientes


  @test
  @Highest
  @PDS-7771
  Escenario: Crear una cuenta bancaria con información básica (PDS-7771)
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
    * Click a CuentasBancarias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CuentasBancarias.json
    * Click a Nuevo
    * Esperar que el elemento Banco este visible
    * Llenar formulario:
      | Banco        | GT - BANRURAL      |
      | Moneda       | Quetzales          |
      | NumeroCuenta | Información básica |
      | TipoCuenta   | Ahorro             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Cuenta No. de valor Información básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Banco        | GT - BANRURAL      |
      | Moneda       | Quetzales          |
      | NumeroCuenta | Información básica |
      | TipoCuenta   | Ahorro             |

  @test
  @Highest
  @PDS-7775
  Escenario: Editar una cuenta bancaria con información básica (PDS-7775)
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
    * Click a CuentasBancarias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CuentasBancarias.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Cuenta No. de valor Editar
    * Esperar que el elemento Banco este visible
    * Llenar formulario:
      | Banco        | GT - BANRURAL |
      | Moneda       | Dólares       |
      | NumeroCuenta | Editado       |
      | TipoCuenta   | Corriente     |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Cuenta No. de valor Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Banco        | GT - BANRURAL |
      | Moneda       | Dólares       |
      | NumeroCuenta | Editado       |
      | TipoCuenta   | Corriente     |

  @test
  @Highest
  @PDS-7776
  Escenario: Eliminar una cuenta bancaria (PDS-7776)
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
    * Click a CuentasBancarias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CuentasBancarias.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Cuenta No. de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La cuenta bancaria del expediente ha sido eliminada correctamente

  @test
  @Highest
  @PDS-7767
  Escenario: Consultar una cuenta bancaria con información básica (PDS-7767)
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
    * Click a CuentasBancarias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CuentasBancarias.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO   | 9                    |
      | BancoRO    | GT - BAM (Guatemala) |
      | MonedaRO   | Quetzales            |
      | CuentaNoRO | 12345                |


  @test
  @Highest
  @PDS-7778
  Escenario: Ver el listado de cuentas bancariass (PDS-7778)
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
    * Click a CuentasBancarias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CuentasBancarias.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7777
  Escenario: Guardar una cuenta bancaria en los campos en blanco (PDS-7777)
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
    * Click a CuentasBancarias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CuentasBancarias.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El número de la cuenta es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El banco al que pertenece la cuenta es requerido
