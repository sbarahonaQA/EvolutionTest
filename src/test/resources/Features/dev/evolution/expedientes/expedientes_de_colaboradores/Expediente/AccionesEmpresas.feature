# language: es

@expedientes
@expedientes_colaboradores
@identificacion
Característica: Identificacion
  Pruebas para entidad IdentificacionExpedientes


  @test
  @Highest
  @PDS-7600
  Escenario: Crear una acción en empresas en expedientes con información básica (PDS-7600)
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
    * Click a AccionesEmpresas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/AccionesEmpresas.json
    * Click a Nuevo
    * Esperar que el elemento NombreEmpresa este visible
    * Llenar formulario:
      | NombreEmpresa           | Prueba Básico |
      | CargoOcupa              | Probador      |
      | GiroEmpresa             | Tecnología    |
      | PorcentajeParticipacion | 5             |
      | NumeroAcciones          | 2             |
      | Moneda                  | Dólares       |
      | ValorAcciones           | 150.00        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre empresa de valor Prueba Básico
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEmpresa           | Prueba Básico |
      | CargoOcupa              | Probador      |
      | GiroEmpresa             | Tecnología    |
      | PorcentajeParticipacion | 5             |
      | NumeroAcciones          | 2             |
      | Moneda                  | Dólares       |
      | ValorAcciones           | 150.00        |
      | TotalInversion          | 300.00        |

  @test
  @Highest
  @PDS-7604
  Escenario: Editar una acción en empresas en expedientes con información básica (PDS-7604)
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
    * Click a AccionesEmpresas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/AccionesEmpresas.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre empresa de valor Prueba a Editar
    * Esperar que el elemento NombreEmpresa este visible
    * Llenar formulario:
      | NombreEmpresa           | Registro Editado |
      | Direccion               | EDITADO          |
      | Ciudad                  | EDITADO          |
      | Pais                    | Guatemala        |
      | Departamento            | ZACAPA           |
      | Municipio               | HUITÉ            |
      | DatosRegistro           | EDITADO          |
      | CargoOcupa              | TESTEADOS        |
      | GiroEmpresa             | INFORMATICA      |
      | PorcentajeParticipacion | 15               |
      | NumeroAcciones          | 250              |
      | Moneda                  | Dólares          |
      | ValorAcciones           | 150.00           |
      | FechaPosesion           | 11/1/2012        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre empresa de valor Registro Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEmpresa           | Registro Editado |
      | Direccion               | EDITADO          |
      | Ciudad                  | EDITADO          |
      | Pais                    | Guatemala        |
      | Departamento            | ZACAPA           |
      | Municipio               | HUITÉ            |
      | DatosRegistro           | EDITADO          |
      | CargoOcupa              | TESTEADOS        |
      | GiroEmpresa             | INFORMATICA      |
      | PorcentajeParticipacion | 15               |
      | NumeroAcciones          | 250              |
      | Moneda                  | Dólares          |
      | ValorAcciones           | 150.00           |
      | TotalInversion          | 500.00           |
      | FechaPosesion           | 11/1/2012        |

  @test
  @Highest
  @PDS-7605
  Escenario: Eliminar una acción en empresas en expedientes (PDS-7605)
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
    * Click a AccionesEmpresas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/AccionesEmpresas.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Nombre empresa de valor Prueba Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Acción en una compañía eliminada correctamente

  @test
  @Highest
  @PDS-7597
  Escenario: Consultar una acción en empresas en expedientes con información básica (PDS-7597)
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
    * Click a AccionesEmpresas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/AccionesEmpresas.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO              | 3                     |
      | NombreEmpresaRO       | Prueba de Consulta    |
      | DatosRegistroRO       | Prueba de informacion |
      | CargoOcupaRO          | Prueba                |
      | GiroEmpresaRO         | Prueba                |
      | PorcentajeParticionRO | 10.00                 |
      | NumeroAccionesRO      | 3                     |
      | MonedaRO              | Dólares               |
      | ValorAccionRO         | 235.00                |
      | TotalInversionRO      | 705.00                |

  @test
  @Highest
  @PDS-7607
  Escenario: Ver el listado de Acciones en empresas en expedientes (PDS-7607)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a AccionesEmpresas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/AccionesEmpresas.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7606
  Escenario: Guardar una acción en empresas en expedientes con los campos en blanco (PDS-7606)
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
    * Click a AccionesEmpresas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/AccionesEmpresas.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El nombre de la empresa es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El cargo que ocupa es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El giro de la empresa es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El número de acciones tiene que ser mayor que 0
    * Prueba exitosa si elemento MensajeError contiene texto El porcentaje debe ser mayor que 0 y menor o igual que 100
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida