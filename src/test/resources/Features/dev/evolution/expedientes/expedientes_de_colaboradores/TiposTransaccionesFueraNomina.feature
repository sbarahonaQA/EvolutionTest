# language: es

@expedientes
@expedientes_colaboradores
@tipostransaccionesfueranomina
Característica: TiposTransaccionesFueraNomina
  Pruebas para entidad TiposTransaccionesFueraNomina (Tipos de Transacciones Fuera de Nómina)

  @test
  @Highest
  @PDS-1553
  Escenario: Crear un Tipo de transacción fuera de nómina con información básica (PDS-1553)
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
    * Click a TiposTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposTransaccionesFueraNomina.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Creación Básica |
      | Pais        | Bolivia         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Creación Básica |
      | Pais        | Bolivia         |

  @test
  @Highest
  @PDS-1556
  Escenario: Editar un Tipo de transacción fuera de nómina con información básica (PDS-1556)
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
    * Click a TiposTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposTransaccionesFueraNomina.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Prueba Editada |
      | Pais        | Brasil         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Prueba Editada |
      | Pais        | Brasil         |

  @test
  @Highest
  @PDS-1557
  Escenario: Eliminar un Tipo de transacción fuera de nómina (PDS-1557)
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
    * Click a TiposTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposTransaccionesFueraNomina.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar Basico
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1554
  Escenario: Consultar un Tipo de transacción fuera de nómina con información básica (PDS-1554)
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
    * Click a TiposTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposTransaccionesFueraNomina.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Consultar Archivo y Adjunto
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 2                                |
      | DescripcionRO | Para Consultar Archivo y Adjunto |
      | PaisRO        | Guatemala                        |


  @test
  @Highest
  @PDS-1552
  Escenario: Ver el listado de Tipos de transacciones fuera de nómina (PDS-1552)
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
    * Click a TiposTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposTransaccionesFueraNomina.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1555
  Escenario: Guardar un Tipo de transacción fuera de nómina con los campos en blanco (PDS-1555)
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
    * Click a TiposTransaccionesFueraNomina
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposTransaccionesFueraNomina.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El país es requerido