# language: es

@expedientes
@expedientes_colaboradores
@vehiculos
Característica: Vehiculos
  Pruebas para entidad VehículosExpedientes


  @test
  @Highest
  @PDS-7672
  Escenario: Crear un vehículo en expedientes con información básica (PDS-7672)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Vehiculos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Vehiculos.json
    * Click a Nuevo
    * Esperar que el elemento Marca este visible
    * Llenar formulario:
      | Marca        | Creacion Basica |
      | Modelo       | Jaguar          |
      | Placa        | 905POL          |
      | MonedaCodigo | Dólares         |
      | Estado       | Pagado          |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Marca de valor Creacion Basica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Marca        | Creacion Basica |
      | Modelo       | Jaguar          |
      | Placa        | 905POL          |
      | MonedaCodigo | Dólares         |
      | Estado       | Pagado          |

  @test
  @Highest
  @PDS-7676
  Escenario: Editar un vehículo en expedientes con información básica (PDS-7676)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Vehiculos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Vehiculos.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Marca de valor Edita
    * Esperar que el elemento Marca este visible
    * Llenar formulario:
      | Marca            | Carro Editado   |
      | Modelo           | Jaguar Editado  |
      | Placa            | 509LOP          |
      | FechaAdquisicion | 12/03/2020      |
      | MonedaCodigo     | Dólares         |
      | ValorActual      | 25000           |
      | Estado           | Pagado          |
      | TipoGravamen     | Prueba Vehiculo |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Marca de valor Carro Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Marca            | Carro Editado   |
      | Modelo           | Jaguar Editado  |
      | Placa            | 509LOP          |
      | FechaAdquisicion | 12/03/2020      |
      | MonedaCodigo     | Dólares         |
      | ValorActual      | 25000           |
      | Estado           | Pagado          |
      | TipoGravamen     | Prueba Vehiculo |

  @test
  @Highest
  @PDS-7677
  Escenario: Eliminar un vehículo en expedientes (PDS-7677)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Vehiculos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Vehiculos.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Marca de valor Para eliminar Corola
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Vehículo eliminado correctamente

  @test
  @Highest
  @PDS-7669
  Escenario: Consultar un Préstamo en expedientes con información básica (PDS-7669)
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
    * Click a Vehiculos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Vehiculos.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 1                |
      | MarcaRO            | Consultar Toyota |
      | ModeloRO           | Yaris            |
      | PlacaRO            | 234LOD           |
      | FechaAdquisicionRO | 20/4/2021        |
      | MonedaRO           | Dólares          |
      | ValorActualRO      | 35,000.00        |
      | EstadoRO           | Financiado       |
      | TipoGravamenRO     | Nigunguno        |

  @test
  @Highest
  @PDS-7679
  Escenario: Ver el listado de vehículos en expedientess (PDS-7679)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Vehiculos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Vehiculos.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7678
  Escenario: Guardar un vehículo en expedientes con los campos en blanco (PDS-7678)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Vehiculos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Vehiculos.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La marca es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El modelo es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La placa es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El estado es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida