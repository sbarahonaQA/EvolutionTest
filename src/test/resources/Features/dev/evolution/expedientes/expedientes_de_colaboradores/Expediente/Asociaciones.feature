# language: es

@expedientes
@expedientes_colaboradores
@asociaciones
Característica: Asociaciones
  Pruebas para entidad AsociacionesExpedientes

  @test
  @Highest
  @PDS-7747
  Escenario: Editar una asociación con información básica (PDS-7747)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Asociaciones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Asociación de valor Sociedad de Ingenieros
    * Esperar que el elemento Asociacion este visible
    * Llenar formulario:
      | Asociacion     | Fundación REDES |
      | Cargo          | Cargo Editado   |
      | FechaIngreso   | 05/01/2022      |
      | FechaRetiro    | 06/01/2022      |
      | PorcentajePago | 29              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Asociación de valor Fundación REDES
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Asociacion     | Fundación REDES |
      | Cargo          | Cargo Editado   |
      | FechaIngreso   | 05/01/2022      |
      | FechaRetiro    | 06/01/2022      |
      | PorcentajePago | 29              |



  @test
  @Highest
  @PDS-7724
  Escenario: Consultar una Afición dentro de un expediente (PDS-7724)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100161
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Asociaciones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO         | 7         |
      | AsociacionRO     | ASIA      |
      | CargoRO          | consulta  |
      | FechaIngresoRO   | 5/1/2022  |
      | FechaRetiroRO    | 14/1/2022 |
      | PorcentajePagoRO | 60.00     |



  @test
  @Highest
  @PDS-7748
  Escenario: Ver el listado de asociaciones en expedientes (PDS-7748)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Asociaciones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

