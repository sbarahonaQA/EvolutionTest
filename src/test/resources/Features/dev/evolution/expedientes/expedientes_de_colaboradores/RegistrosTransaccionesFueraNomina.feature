# language: es

@expedientes
@expedientes_colaboradores
@registrostransaccionesfueranomina
Característica: RegistrosTransaccionesFueraNomina
  Pruebas para entidad RegistrosTransaccionesFueraNomina (Registros de Transacciones Fuera de Nomina)

  @test
  @Highest
  @PDS-1710
  Escenario: Crear un Registro de transacción fuera del cálculo de planilla con información básica (PDS-1710)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a RegistrosTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RegistrosTransaccionesFueraNomina.json
    * Click a Nuevo
    * Llenar formulario:
      | CodigoEmpleado | 100062          |
      | TipoCodigo     | 2               |
      | Fecha          | 10/09/2020      |
      | MonedaCodigo   | GTQ             |
      | Valor          | 750             |
      | Anio           | 3               |
      | Comentario     | Creacion Basica |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Teresa Lourdes Hernandez
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | EmpleadoTexto | 100062 - Teresa Lourdes Hernandez |
      | TipoTexto     | Para Consultar Archivo y Adjunto  |
      | Fecha         | 10/09/2020                        |
      | MonedaTexto   | Quetzales                         |
      | Valor         | 750                               |
      | Anio          | 3                                 |
      | Comentario    | Creacion Basica                   |

  @test
  @Highest
  @PDS-1713
  Escenario: Editar un Registro de transacción fuera del cálculo de planilla con información básica (PDS-1713)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a RegistrosTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RegistrosTransaccionesFueraNomina.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Osmín Roberto Rodezno García
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Fecha          | 15/06/2021       |
      | MonedaCodigo   | ECU              |
      | Valor          | 200              |
      | Anio           | 1                |
      | Comentario     | Registro Editado |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Osmín Roberto Rodezno García
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | EmpleadoTexto | 100006 - Osmín Roberto Rodezno García |
      | TipoTexto     | Para Consultar Archivo y Adjunto      |
      | Fecha         | 15/06/2021                            |
      | MonedaCodigo  | ECU                                   |
      | Valor         | 200                                   |
      | Anio          | 1                                     |
      | Comentario    | Registro Editado                      |

  @test
  @Highest
  @PDS-1714
  Escenario: Eliminar un Registro de transacción fuera del cálculo de planilla (PDS-1714)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a RegistrosTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RegistrosTransaccionesFueraNomina.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Oscar Alfredo Chacón
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1711
  Escenario: Consultar un Tipo de estudio con información básica (PDS-1711)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a RegistrosTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RegistrosTransaccionesFueraNomina.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Carlos Benjamin Carbajal Venero
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO     | 1                                         |
      | EmpleadoRO   | 100003 - Carlos Benjamin Carbajal Venero  |
      | TipoRO       | Para Consultar Archivo y Adjunto          |
      | FechaRO      | 10/9/2021                                 |
      | MonedaRO     | Quetzales                                 |
      | ValorRO      | 450.00                                    |
      | AnioRO       | 2                                         |
      | ComentarioRO | Consultar                                 |

  @test
  @Highest
  @PDS-1715
  Escenario: Ver el listado de Registros de transacciones fuera del cálculo de planilla (PDS-1715)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a RegistrosTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RegistrosTransaccionesFueraNomina.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1712
  Escenario: Guardar un Registro de transacción fuera del cálculo de planilla con los campos en blanco (PDS-1712)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a RegistrosTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RegistrosTransaccionesFueraNomina.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto The TipoCodigo field is required.
    * Prueba exitosa si elemento Mensaje contiene texto The Fecha field is required.