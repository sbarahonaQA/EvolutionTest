# language: es

@expedientes
@expedientes_colaboradores
@aficiones
Característica: aficiones
  Pruebas para entidad AficionesExpedientes

  @test
  @Highest
  @PDS-16459
  Escenario: Crear una afición dentro de un expediente con información básica (PDS-16459)
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
    * Click a Aficiones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Aficiones.json
    * Click a Nuevo
    * Esperar que el elemento Aficion este visible
    * Llenar formulario:
      | Aficion  | Ping Pong |
      | Practica | True      |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Afición de valor Ping Pong
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Aficion  | Ping Pong |
      | Practica | True      |

  @test
  @Highest
  @PDS-16462
  Escenario: Editar una afición dentro de un expediente (PDS-16462)
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
    * Click a Aficiones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Aficiones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Afición de valor Fútbol
    * Esperar que el elemento Aficion este visible
    * Llenar formulario:
      | Aficion  | Lectura |
      | Practica | False   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Afición de valor Lectura
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Aficion  | Lectura |
      | Practica | False   |
  @test
  @Highest
  @PDS-16461
  Escenario: Eliminar una afición de un expediente (PDS-16461)
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
    * Click a Aficiones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Aficiones.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Afición de valor Ajedrez
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Afición del expediente eliminado correctamente


  @test
  @Highest
  @PDS-16460
  Escenario: Consultar una Afición dentro de un expediente (PDS-16460)
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
    * Click a Aficiones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Aficiones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO     | 3       |
      | AficionRO    | Pintura |
      | LoPracticaRO | Sí      |



  @test
  @Highest
  @PDS-16464
  Escenario: Ver el listado de aficiones dentro de un expediente (PDS-16464)
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
    * Click a Aficiones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Aficiones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

