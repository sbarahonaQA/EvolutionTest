# language: es

@expedientes
@expedientes_colaboradores
@prestamos
Característica: Prestamos
  Pruebas para entidad Prestamos

  @test
  @Highest
  @PDS-7502
  Escenario: Consultar sustitución para autorización con información básica (PDS-7502)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100166
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a SustitucionesAutorizaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/SustitucionesAutorizaciones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreRO            | Chang, José Ernesto |
      | PuestoRO            | Jefe de Operaciones |
      | FechaInicioRO       | 17/8/2021           |
      | FechaFinalizacionRO | 17/8/2021           |

