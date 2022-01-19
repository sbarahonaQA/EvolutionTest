# language: es

@expedientes
@expedientes_colaboradores
@EstadoReclamoSeguroMedico
Característica: Estado Reclamo Seguro Medico
  Pruebas para entidad Estado Reclamo Seguro Medico (Estado Reclamo Seguro Medico)

  @test
  @Highest
  @PDS-1456
  Escenario: Crear un Estado Reclamo Seguro Medicos con información básica (PDS-1456)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a EstadoReclamoSeguro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/EstadoReclamoSeguro.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre             | Atraso de Pago |
      | Orden              | 1|
      | RequiereMonto      | True |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarEstadoReclamoSeguroMedico
    * Esperar 3 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Atraso de Pago
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre             | Atraso de Pago|
      | Orden              | 1|
      | RequiereMonto      | True |


  @test
  @Highest
  @PDS-1458
  Escenario: Guardar un Estado Reclamo Seguros con los campos en blanco (PDS-1458)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a EstadoReclamoSeguro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/EstadoReclamoSeguro.json
    * Click a Nuevo
    * Click a GuardarEstadoReclamoSeguroMedico
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

  @test
  @Highest
  @PDS-1459
  Escenario: Editar un Estado Reclamo Seguro de Medico con información básica(PDS-1459)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a EstadoReclamoSeguro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/EstadoReclamoSeguro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Reclamo Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre             | Reclamo Editado |
      | Orden              | 8|
      | EsRechazado        | True |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarEstadoReclamoSeguroMedico
    * Esperar 3 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Reclamo Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre             | Reclamo Editado |
      | Orden              | 8|
      | EsRechazado        | True |

  @test
  @Highest
  @PDS-1579
  Escenario: Eliminar un Estado Reclamo Seguro de Medico(PDS-1579)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a EstadoReclamoSeguro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/EstadoReclamoSeguro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1457
  Escenario: Consultar un Estado Reclamo Seguro de Medico con información básica (PDS-1457)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a EstadoReclamoSeguro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/EstadoReclamoSeguro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Rechazado
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 10 |
      | NombreRO        | Rechazado |
      | OrdenRO         | 5 |
      | EsRechazadoRO   | Estado Rechazado |

  @test
  @Highest
  @PDS-1455
  Escenario: Ver el listado de Estado Reclamo De Seguro Medico (PDS-1455)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a EstadoReclamoSeguro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/EstadoReclamoSeguro.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

