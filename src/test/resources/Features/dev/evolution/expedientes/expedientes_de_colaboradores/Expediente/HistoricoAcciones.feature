# language: es

@expedientes
@expedientes_colaboradores
@historicoaccionespersonal
Característica: HistoricoAcciones
  Pruebas para entidad HistoricoAccionesPersonal

  @test
  @Highest
  @PDS-7472
  Escenario: Ver el listado de histórico de acciones de personal en expedientes (PDS-7472)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 200050
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a HistoricoAcciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/HistoricoAcciones.json
    * Esperar que el elemento CajaDeBusqueda este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | RegresarListado | CajaDeBusqueda | Accion | Inicio | Fin | Descripcion |

