# language: es

@nominas
@acciones_personal
@sustitucionestemporales
Característica: SustitucionesTemporales
  Pruebas para entidad SustitucionesTemporales (Motivos de Sustitucion Temporal)

  @test
  @Highest
  @PDS-2728
  Escenario: Crear una sustitución temporal con información básica (PDS-2728)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Click a Nuevo
    * Llenar formulario:
      | codigoAlternativoTitular   | 100004       |
      | codigoAlternativoSustituto | 100007       |
      | SeEspecificaronHoras       | False        |
      | FechaInicio                | 2/9/2020     |
      | FechaFin                   | 03/09/2020   |
      | Motivo                     | Amonestación |
      | CodigoEmpleadoSolicitante  | 200007       |
      | Observaciones              | Observación  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Joaquin Alfredo Umanzor Velásquez
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | EmpleadoTitular      | 100004 - Joaquin Alfredo Umanzor Velásquez  |
      | EmpleadoSustituto    | 100007 - Ana María Penado Guzmán            |
      | SeEspecificaronHoras | False                                       |
      | FechaInicio          | 2/9/2020                                    |
      | FechaFin             | 03/09/2020                                  |
      | Motivo               | Amonestación                                |
      | Observaciones        | Observación                                 |

  @test
  @Highest
  @PDS-3598
  Escenario: Autorizar una sustitución temporal sin flujo de autorización (PDS-3598)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Click a Nuevo
    * Llenar formulario:
      | codigoAlternativoTitular   | 100104       |
      | codigoAlternativoSustituto | 100118       |
      | SeEspecificaronHoras       | False        |
      | FechaInicio                | 2/9/2020     |
      | FechaFin                   | 03/09/2020   |
      | Motivo                     | Amonestación |
      | CodigoEmpleadoSolicitante  | 200007       |
      | Observaciones              | Observación  |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarYProcesar
    #Esperando que el registro se autorice
    * Esperar 1 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Juan José Jiménez Flores
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | EmpleadoTitularA   | 100104 - Juan José Jiménez Flores    |
      | EmpleadoSustitutoA | 100118 - Hugo Héctor Fernández Vega  |
      | TomaraDiaCompleto  | No                                   |
      | Desde              | 2/9/2020                             |
      | Hasta              | 3/9/2020                             |
      | MotivoA            | Amonestación                         |
      | ObservacionesA     | Observación                          |

  @test
  @Highest
  @PDS-2731
  Escenario: Editar una sustitución temporal con información básica (PDS-2731)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Osmín Roberto Rodezno García
    * Click a SegundoElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | SeEspecificaronHoras | False      |
      | FechaInicio          | 26/01/2022 |
      | FechaFin             | 26/01/2022 |
      | Motivo               | Ausencia   |
      | Observaciones        | Editado    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Osmín Roberto Rodezno García
    * Click a SegundoElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | EmpleadoTitular      | 100006 - Osmín Roberto Rodezno García      |
      | EmpleadoSustituto    | 100004 - Joaquin Alfredo Umanzor Velásquez |
      | SeEspecificaronHoras | False                                      |
      | FechaInicio          | 26/01/2022                                 |
      | FechaFin             | 26/01/2022                                 |
      | Motivo               | Ausencia                                   |
      | Observaciones        | Editado                                    |

  @test
  @Highest
  @PDS-2732
  Escenario: Eliminar una sustitución temporal (PDS-2732)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Teresa Margarita Valdivieso Valencia Barrientos
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-2729
  Escenario: Consultar una sustitución temporal con información básica (PDS-2729)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Mirna Guadalupe Lopez Villeda
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO           | 17                                          |
      | EmpleadoTitularA   | 100057 - Mirna Guadalupe Lopez Villeda      |
      | EmpleadoSustitutoA | 100075 - Ernesto Farabundo Vaquerano Nochez |
      | TomaraDiaCompleto  | No                                          |
      | Desde              | 25/1/2022                                   |
      | Hasta              | 25/1/2022                                   |
      | MotivoA            | Amonestación                                |
      | ObservacionesA     | Consulta                                    |



  @test
  @Highest
  @PDS-2727
  Escenario: Ver el listado de Sustituciones Temporales (PDS-2727)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-2730
  Escenario: Guardar una sustitución temporal con los campos en blanco (PDS-2730)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a SustitucionesTemporales
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/SustitucionesTemporales.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El empleado titular es requerido
    * Prueba exitosa si elemento Mensaje contiene texto El empleado sustituto es requerido