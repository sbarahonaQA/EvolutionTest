# language: es

@expedientes
@expedientes_colaboradores
@contrataciones
Característica: Contrataciones
  Pruebas para entidad ContratacionesExpedientes

  @test
  @Highest
  @PDS-7424
  Escenario: Ver el listado de contrataciones en expedientes (PDS-7424)
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
    * Click a Contrataciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Contrataciones.json
    * Esperar que el elemento Tablas este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Tablas | RegresarListado |

