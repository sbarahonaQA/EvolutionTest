# language: es

@expedientes
@expedientes_colaboradores
@formaspago
Característica: EmpleoAnterior
  Pruebas para entidad EmpleoAnteriorExpedientes


  @test
  @Highest
  @PDS-7554
  Escenario: Crear un empleo anterior en expedientes con información básica (PDS-7554)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 222222
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a EmpleoAnterior
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/EmpleoAnterior.json
    * Click a Nuevo
    * Esperar que el elemento Institucion este visible
    * Llenar formulario:
      | Institucion  | Prueba empleo basico |
      | UltimoPuesto | Prueba empleo        |
      | FechaIngreso | 15/7/2020            |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Institución de valor Prueba empleo basico
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Institucion  | Prueba empleo basico |
      | UltimoPuesto | Prueba empleo        |
      | FechaIngreso | 15/7/2020            |

  @test
  @Highest
  @PDS-7558
  Escenario: Editar un empleo anterior en expedientes con información básica (PDS-7558)
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
    * Click a EmpleoAnterior
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/EmpleoAnterior.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Institución de valor Para Editar
    * Esperar que el elemento Institucion este visible
    * Llenar formulario:
      | Institucion        | Registro Editado |
      | Lugar              | Lugar            |
      | UltimoPuesto       | Prueba Editada   |
      | Jefe               | Jefe             |
      | FechaIngreso       | 13/2/2018        |
      | FechaRetiro        | 30/01/2023       |
      | TelefonoCompania   | 2222342          |
      | Motivo             | Para prueba      |
      | PrimerSalario      | 2800             |
      | UltimoSalario      | 5300             |
      | PromedioComisiones | 750              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Institución de valor Registro Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Institucion        | Registro Editado |
      | Lugar              | Lugar            |
      | UltimoPuesto       | Prueba Editada   |
      | Jefe               | Jefe             |
      | FechaIngreso       | 13/2/2018        |
      | FechaRetiro        | 30/01/2023       |
      | TelefonoCompania   | 2222342          |
      | Motivo             | Para prueba      |
      | PrimerSalario      | 2800             |
      | UltimoSalario      | 5300             |
      | PromedioComisiones | 750              |

  @test
  @Highest
  @PDS-7559
  Escenario: Eliminar un empleo anterior en expedientes (PDS-7559)
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
    * Click a EmpleoAnterior
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/EmpleoAnterior.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Institución de valor Prueba empleo eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Empleo anterior eliminado correctamente

  @test
  @Highest
  @PDS-7551
  Escenario: Consultar un empleo anterior en expedientes con información básica (PDS-7551)
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
    * Click a EmpleoAnterior
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/EmpleoAnterior.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO             | 7               |
      | InstitucionRO        | Para Consultar  |
      | LugarRO              | Lugar           |
      | UltimoPuestoRO       | Prueba Consulta |
      | JefeRO               | Jefe            |
      | FechaIngresoRO       | 13/2/2018       |
      | FechaRetiroRO        | 30/1/2025       |
      | TelefonoCompaniaRO   | 2222222         |
      | MotivoRO             | Para prueba     |
      | PrimerSalarioRO      | 2,300.00        |
      | UltimoSalarioRO      | 4,300.00        |
      | PromedioComisionesRO | 450.00          |

  @test
  @Highest
  @PDS-7561
  Escenario: Ver el listado empleos anteriores en expedientes (PDS-7561)
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
    * Click a EmpleoAnterior
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/EmpleoAnterior.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7560
  Escenario: Guardar un empleo anterior en expedientes con los campos en blanco (PDS-7560)
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
    * Click a EmpleoAnterior
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/EmpleoAnterior.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La Institución es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El último puesto es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La fecha de ingreso es requerida