# language: es

@expedientes
@expedientes_colaboradores
@propiedades
Característica: Propiedades
  Pruebas para entidad PropiedadesExpedientes


  @test
  @Highest
  @PDS-7629
  Escenario: Crear una propiedad en expedientes con información básica (PDS-7629)
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
    * Click a Propiedades
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Propiedades.json
    * Click a Nuevo
    * Esperar que el elemento Tipo este visible
    * Llenar formulario:
      | Tipo                  | Finca              |
      | Ubicacion             | Finca los Vendados |
      | FechaAdquisicion      | 8/9/1987           |
      | MonedaCodigo          | Dólares            |
      | Valor                 | 7500.00            |
      | Status                | Propia             |
      | Gravamen              | False              |
      | PrestamoSobreInmueble | False              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Ubicación de valor Finca los Vendados
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Tipo                  | Finca              |
      | Ubicacion             | Finca los Vendados |
      | FechaAdquisicion      | 8/9/1987           |
      | MonedaCodigo          | Dólares            |
      | Valor                 | 7500.00            |
      | Status                | Propia             |
      | Gravamen              | False              |
      | PrestamoSobreInmueble | False              |

  @test
  @Highest
  @PDS-7633
  Escenario: Editar una propiedad en expedientes con información básica (PDS-7633)
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
    * Click a Propiedades
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Propiedades.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Ubicación de valor Editar
    * Esperar que el elemento Tipo este visible
    * Llenar formulario:
      | Tipo                  | Quinta             |
      | Ubicacion             | Finca los Vendados |
      | FechaAdquisicion      | 8/9/1995           |
      | MonedaCodigo          | Dólares            |
      | Valor                 | 7500.00            |
      | Status                | Propia             |
      | Gravamen              | False              |
      | PrestamoSobreInmueble | False              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Fecha de adquisición de valor 8/9/1995
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Tipo                  | Quinta             |
      | Ubicacion             | Finca los Vendados |
      | FechaAdquisicion      | 8/9/1995           |
      | MonedaCodigo          | Dólares            |
      | Valor                 | 7500.00            |
      | Status                | Propia             |
      | Gravamen              | False              |
      | PrestamoSobreInmueble | False              |

  @test
  @Highest
  @PDS-7634
  Escenario: Eliminar una propiedad en expedientes (PDS-7634)
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
    * Click a Propiedades
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Propiedades.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Ubicación de valor Para eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Propiedad eliminada correctamente

  @test
  @Highest
  @PDS-7626
  Escenario: Consultar una propiedad en expedientes con información básica (PDS-7626)
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
    * Click a Propiedades
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Propiedades.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                 | 1                       |
      | TipoRO                   | Casa                    |
      | UbicacionRO              | Residencial la Arboleda |
      | FechaAdquisicionRO       | 8/9/1987                |
      | MonedaRO                 | Dólares                 |
      | ValorRO                  | 5,000.00                |
      | StatusRO                 | Propia                  |
      | GravamenRO               | No                      |
      | TienePrestamoHipotechaRO | No                      |


  @test
  @Highest
  @PDS-7636
  Escenario:Ver el listado propiedades en expedientes (PDS-7636)
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
    * Click a Propiedades
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Propiedades.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-7635
  Escenario: Guardar una propiedad en expedientes con los campos en blanco (PDS-7635)
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
    * Click a Propiedades
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Propiedades.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El tipo es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La ubicación es requerida
    * Prueba exitosa si elemento MensajeError contiene texto La fecha de adquisición es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El valor es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El status es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida