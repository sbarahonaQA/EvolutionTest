# language: es

@expedientes
@expedientes_colaboradores
@historicotransacciones
Característica: HistoricoTransacciones
  Pruebas para entidad HistoricoTransacciones

  @test
  @Highest
  @PDS-7474
  Escenario: Ver el listado Histórico de transacciones de planilla en expedientes (PDS-7474)
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
    * Click a HistoricoTransacciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/HistoricoTransacciones.json
    * Esperar que el elemento CajaDeBusqueda este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | RegresarListado | CajaDeBusqueda | Accion | PeriodoPlanilla | Monto | Fecha | Tipo | Descripcion |

