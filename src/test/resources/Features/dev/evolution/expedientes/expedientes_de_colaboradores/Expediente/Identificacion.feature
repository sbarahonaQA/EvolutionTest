# language: es

@expedientes
@expedientes_colaboradores
@identificacion
Característica: Identificación
  Pruebas para entidad IdentificacionExpedientes


  @test
  @Highest
  @PDS-7857
  Escenario: Crear un documento de identificación con información básica (PDS-7857)
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
    * Click a Identificacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Identificacion.json
    * Click a Nuevo
    * Esperar que el elemento TipoDocumento este visible
    * Llenar formulario:
      | TipoDocumento        | Profesional (El Salvador) |
      | Numero               | 623145                    |
      | NombreSegunDocumento | Creación                  |
      | FechaExpedicion      | 13/01/2022                |
      | FechaVencimiento     | 11/01/2022                |
      | Pais                 | Costa Rica                |
      | Departamento         | ALAJUELA                  |
      | Municipio            | ALAJUELA                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Número de valor 623145
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoDocumento        | Profesional (El Salvador) |
      | Numero               | 623145                    |
      | NombreSegunDocumento | Creación                  |
      | FechaExpedicion      | 13/01/2022                |
      | FechaVencimiento     | 11/01/2022                |
      | Pais                 | Costa Rica                |
      | Departamento         | ALAJUELA                  |
      | Municipio            | ALAJUELA                  |

  @test
  @Highest
  @PDS-7862
  Escenario: Editar un documento de identificación con información básica (PDS-7862)
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
    * Click a Identificacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Identificacion.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Número de valor 23467
    * Esperar que el elemento TipoDocumento este visible
    * Llenar formulario:
      | TipoDocumento        | Profesional (El Salvador) |
      | Numero               | 9209340                   |
      | NombreSegunDocumento | EDITADO                   |
      | FechaExpedicion      | 29/01/2022                |
      | FechaVencimiento     | 29/01/2022                |
      | Pais                 | El Salvador               |
      | Departamento         | SAN SALVADOR              |
      | Municipio            | Candelaria de la Frontera |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Número de valor 9209340
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoDocumento        | Profesional (El Salvador) |
      | Numero               | 9209340                   |
      | NombreSegunDocumento | EDITADO                   |
      | FechaExpedicion      | 29/01/2022                |
      | FechaVencimiento     | 29/01/2022                |
      | Pais                 | El Salvador               |
      | Departamento         | SAN SALVADOR              |
      | Municipio            | Candelaria de la Frontera |

  @test
  @Highest
  @PDS-7863
  Escenario: Eliminar un documento de identificación (PDS-7863)
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
    * Click a Identificacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Identificacion.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Número de valor 9090
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Documento de identificación eliminado correctamente


  @test
  @Highest
  @PDS-7854
  Escenario: Consultar un documento de identificación con información básica (PDS-7854)
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
    * Click a Identificacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Identificacion.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 1013           |
      | NumeroRO           | 3423       |
      | TipoDocumentoRO    | Carnet de Residente   |
      | NombreDocRO  | Consultar  |
      | FechaExpedicionRO  | 4/1/2022   |
      | FechaVencimientoRO | 4/1/2022  |
      | PaisRO             | El Salvador      |
      | DepartamentoRO     | SAN SALVADOR  |
      | MunicipioRO        | El Congo     |



  @test
  @Highest
  @PDS-7865
  Escenario: Ver el listado de documentos de identificación (PDS-7865)
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
    * Click a Identificacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Identificacion.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-7864
  Escenario: Guardar un documento de identificación con los campos en blanco (PDS-7864)
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
    * Click a Identificacion
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Identificacion.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El número del documento es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El tipo del documento es requerido

