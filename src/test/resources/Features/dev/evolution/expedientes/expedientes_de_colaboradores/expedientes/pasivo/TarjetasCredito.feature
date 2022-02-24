# language: es

@expedientes
@expedientes_colaboradores
@expedientes
@pasivo
@tarjetas_credito_expedientes
Característica: TarjetasCreditoExpedientes
  Pruebas para entidad TarjetasCreditoExpedientes (Tarjetas de crédito que posee el expediente)

  @test
  @Highest
  @PDS-7716
  Escenario: Crear Tarjetas de crédito con información básica (PDS-7716)
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
    * Click a TarjetasCredito
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/pasivo/TarjetasCredito.json
    * Click a Nuevo
    * Esperar que el elemento NombreEntidad este visible
    * Llenar formulario:
      | NombreEntidad            | Creación |
      | Tipo                     | Regional |
      | MonedaCodigo             | Dólares  |
      | LimiteAutorizado         | 6.00     |
      | SaldoActual              | 4.00     |
      | TieneExtrafinanciamiento | False    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Creación
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEntidad            | Creación |
      | Tipo                     | Regional |
      | MonedaCodigo             | Dólares  |
      | LimiteAutorizado         | 6.00     |
      | SaldoActual              | 4.00     |
      | TieneExtrafinanciamiento | False    |

  @test
  @Highest
  @PDS-7719
  Escenario: Editar Tarjetas de crédito con información básica (PDS-7719)
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
    * Click a TarjetasCredito
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/pasivo/TarjetasCredito.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Editar
    * Esperar que el elemento NombreEntidad este visible
    * Llenar formulario:
      | NombreEntidad            | Editado  |
      | Tipo                     | Regional |
      | MonedaCodigo             | Dólares  |
      | LimiteAutorizado         | 6.00     |
      | SaldoActual              | 1.00     |
      | TieneExtrafinanciamiento | False    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEntidad            | Editado  |
      | Tipo                     | Regional |
      | MonedaCodigo             | Dólares  |
      | LimiteAutorizado         | 6.00     |
      | SaldoActual              | 1.00     |
      | TieneExtrafinanciamiento | False    |

  @test
  @Highest
  @PDS-7720
  Escenario: Eliminar Tarjetas de crédito (PDS-7720)
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
    * Click a TarjetasCredito
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/pasivo/TarjetasCredito.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Nombre de la entidad de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Tarjeta de crédito eliminada correctamente

  @test
  @Highest
  @PDS-7713
  Escenario: Consultar Tarjetas de crédito con información básica (PDS-7713)
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
    * Click a TarjetasCredito
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/pasivo/TarjetasCredito.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                   | 3             |
      | NombreEntidadRO            | Consulta      |
      | TipoRO                     | Internacional |
      | MonedaRO                   | Dólares       |
      | LimiteAutorizadoRO         | 4.00          |
      | SaldoActualRO              | 2.00          |
      | TieneExtrafinanciamientoRO | No            |


  @test
  @Highest
  @PDS-7722
  Escenario: Ver el listado Tarjetas de crédito en expedientes (PDS-7722)
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
    * Click a TarjetasCredito
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/pasivo/TarjetasCredito.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7721
  Escenario: Guardar Tarjetas de crédito con los campos en blanco (PDS-7721)
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
    * Click a TarjetasCredito
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/pasivo/TarjetasCredito.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El tipo es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El limite autorizado tiene que ser mayor o igual que 0
    * Prueba exitosa si elemento MensajeError contiene texto El saldo actual tiene que ser mayor o igual que 0
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida