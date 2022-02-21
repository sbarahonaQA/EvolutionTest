# language: es

@expedientes
@expedientes_colaboradores
@formas_de_pago
Característica: FormasPago
  Pruebas para entidad FormasPago (Forma de Pago)

  @test
  @Highest
  @PDS-1462
  Escenario: Crear una Forma de pago con información básica (PDS-1462)
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
    * Click a FormadePago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormadePago.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion    | Creacion Basica |
      | RequiereCuenta | False           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarFormaPago
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion    | Creacion Basica |
      | RequiereCuenta | False           |


  @test
  @Highest
  @PDS-1464
  Escenario: Guardar una Forma de Pago con los campos en blanco (PDS-1464)
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
    * Click a FormadePago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormadePago.json
    * Click a Nuevo
    * Click a GuardarFormaPago
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

  @test
  @Highest
  @PDS-1465
  Escenario: Editar una Forma de pago con información básica (PDS-1465)
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
    * Click a FormadePago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormadePago.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion    | Prueba Editada |
      | RequiereCuenta | True           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarFormaPago
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion    | Prueba Editada |
      | RequiereCuenta | True           |

  @test
  @Highest
  @PDS-1466
  Escenario: Eliminar una Forma de pago (PDS-1466)
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
    * Click a FormadePago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormadePago.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1463
  Escenario: Consultar una Forma de Pago con información básica (PDS-1463)
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
    * Click a FormadePago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormadePago.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Transferencia Bancaria
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO         | 4                      |
      | DescripcionRO    | Transferencia Bancaria |
      | RequiereCuentaRO | Sí                     |


  @test
  @Highest
  @PDS-1461
  Escenario: Ver el listado de Parentesco (PDS-1461)
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
    * Click a FormadePago
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormadePago.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

