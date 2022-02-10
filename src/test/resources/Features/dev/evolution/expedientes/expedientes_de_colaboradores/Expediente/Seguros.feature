# language: es

@expedientes
@expedientes_colaboradores
@seguros
Característica: seguros
  Pruebas para entidad segurosExpedientes (Seguros)


  @test
  @Highest
  @PDS-7494
  Escenario: Crear un seguro en expedientes con información básica (PDS-7494)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Seguros.json
    * Click a Nuevo
    * Esperar que el elemento Seguro este visible
    * Llenar formulario:
      | Seguro         | Seguro de Gastos Médicos I |
      | Rango          | Por montos                 |
      | Poliza         | 7494PDS                    |
      | ValorAsegurado | 1500000                    |
      | EsActivo       | True                       |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Poliza de valor 7494PDS
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Seguro         | Seguro de Gastos Médicos I |
      | Rango          | Por montos                 |
      | Poliza         | 7494PDS                    |
      | ValorAsegurado | 1500000                    |
      | EsActivo       | True                       |

  @test
  @Highest
  @PDS-7497
  Escenario: Editar un seguro en expedientes con información básica (PDS-7497)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Seguros.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Poliza de valor 7497PDS
    * Esperar que el elemento Seguro este visible
    * Llenar formulario:
      | Seguro         | Seguro de Gastos Médicos IV |
      | CuotaEmpleado  | 200                         |
      | CuotaPatrono   | 350                         |
      | Rango          | Por dependientes            |
      | Poliza         | MOD7497PDS                  |
      | ValorAsegurado | 75456.00                    |
      | EsActivo       | True                        |
    * Adjuntar captura de pantalla al reporte
    * Click a NuevoBeneficiario
    * Esperar que el elemento NombreBeneficiario este presente
    * Llenar formulario:
      | NombreBeneficiario | NuevoBenef |
      | Porcentaje         | 100        |
    * Click a GuardarBeneficiario
    * Click a Guardar
    * Esperar 4 segundos
    * Editar registro con columna Poliza de valor MOD7497PDS
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Seguro         | Seguro de Gastos Médicos IV |
      | CuotaEmpleado  | 200                         |
      | CuotaPatrono   | 350                         |
      | Rango          | Por dependientes            |
      | Poliza         | MOD7497PDS                  |
      | ValorAsegurado | 75456.00                    |
      | EsActivo       | True                        |


  # No se elimina debido a que tiene un beneficiario dentro del seguro
  @test
  @Highest
  @PDS-7498
  Escenario: Eliminar un seguro en expedientes (PDS-7498)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 222222
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Seguros.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Poliza de valor PDS-7498
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Seguro del empleo eliminado correctamente

  @test
  @Highest
  @PDS-7500
  Escenario: Ver el listado de un seguro en expedientes en expedientes (PDS-7500)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Seguros.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7499
  Escenario: Guardar un seguro en expedientes con los campos en blanco (PDS-7499)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Seguros.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La poliza es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El valor del seguro debe ser mayor que cero