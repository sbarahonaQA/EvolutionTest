# language: es

@expedientes
@expedientes_colaboradores
@valoresemitidosgobierno
Característica: ValoresEmitidosPorGobierno
  Pruebas para entidad ValoresEmitidosGobiernoExpedientes


  @test
  @Highest
  @PDS-7658
  Escenario: Crear un valor emitido por el gobierno en expedientes con información básica (PDS-7658)
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
    * Click a ValoresEmitidosPorGobierno
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/ValoresEmitidosPorGobierno.json
    * Click a Nuevo
    * Esperar que el elemento NombreEntidad este visible
    * Llenar formulario:
      | NombreEntidad | Creación Básica |
      | Descripcion   | Acciones        |
      | MonedaCodigo  | Dólares         |
      | Valor         | 150.00          |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Creación Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEntidad | Creación Básica |
      | Descripcion   | Acciones        |
      | MonedaCodigo  | Dólares         |
      | Valor         | 150.00          |

  @test
  @Highest
  @PDS-7661
  Escenario: Editar un valor emitido por el gobierno en expedientes con información básica (PDS-7661)
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
    * Click a ValoresEmitidosPorGobierno
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/ValoresEmitidosPorGobierno.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Para Editar
    * Esperar que el elemento NombreEntidad este visible
    * Llenar formulario:
      | NombreEntidad | Registro Editado          |
      | Descripcion   | Certificados de Inversion |
      | MonedaCodigo  | Dólares                   |
      | Valor         | 645.00                    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Registro Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEntidad | Registro Editado          |
      | Descripcion   | Certificados de Inversion |
      | MonedaCodigo  | Dólares                   |
      | Valor         | 645.00                    |

  @test
  @Highest
  @PDS-7662
  Escenario: Eliminar un valor emitido por el gobierno en expedientes (PDS-7662)
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
    * Click a ValoresEmitidosPorGobierno
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/ValoresEmitidosPorGobierno.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Nombre de la entidad de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Valor emitido por el gobierno eliminado correctamente

  @test
  @Highest
  @PDS-7655
  Escenario: Consultar un valor emitido por el gobierno en expedientes con información básica (PDS-7655)
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
    * Click a ValoresEmitidosPorGobierno
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/ValoresEmitidosPorGobierno.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 1              |
      | NombreEntidadRO | Para consultas |
      | DescripcionRO   | Acciones       |
      | MonedaRO        | Dólares        |
      | ValorRO         | 150.00         |

  @test
  @Highest
  @PDS-7664
  Escenario: Ver el listado valores emitidos por el gobierno en expedientes (PDS-7664)
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
    * Click a ValoresEmitidosPorGobierno
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/ValoresEmitidosPorGobierno.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-7663
  Escenario: Guardar un valor emitido por el gobierno en expedientes con los campos en blanco (PDS-7663)
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
    * Click a ValoresEmitidosPorGobierno
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/ValoresEmitidosPorGobierno.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La descripción es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El nombre de la entidad es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida