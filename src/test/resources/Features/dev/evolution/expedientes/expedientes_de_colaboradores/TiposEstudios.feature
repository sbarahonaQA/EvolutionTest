# language: es

@expedientes
@expedientes_colaboradores
@tiposcontratos
Característica: TiposContratos
  Pruebas para entidad TiposContratos (Tipos de Contratos)

  @test
  @Highest
  @PDS-1597
  Escenario: Crear un Tipo de estudio con información básica (PDS-1597)
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
    * Click a TiposEstudios
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposEstudios.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Tipo Estudio PDS-1597 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo Estudio PDS-1597
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Tipo Estudio PDS-1597 |

  @test
  @Highest
  @PDS-1602
  Escenario: Editar un Tipo de estudio con información básica (PDS-1602)
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
    * Click a TiposEstudios
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposEstudios.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo Estudio Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion    | Tipo Estudio PDS-1602 |
      | Abreviatura    | TEO                   |
      | NivelEducativo | Secundaria            |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo Estudio PDS-1602
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion    | Tipo Estudio PDS-1602 |
      | Abreviatura    | TEO                   |
      | NivelEducativo | Secundaria            |

  @test
  @Highest
  @PDS-1603
  Escenario: Eliminar un Tipo de estudio (PDS-1603)
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
    * Click a TiposEstudios
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposEstudios.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino PDS-1603 (para eliminar)
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1598
  Escenario: Consultar un Tipo de estudio con información básica (PDS-1598)
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
    * Click a TiposEstudios
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposEstudios.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta Tipo Estudio
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO         | 17                    |
      | DescripcionRO    | Consulta Tipo Estudio |
      | AbreviaturaRO    | CON                   |
      | NivelEducativoRO | Primaria              |

  @test
  @Highest
  @PDS-1596
  Escenario: Ver el listado de Tipos de estudios (PDS-1596)
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
    * Click a TiposEstudios
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposEstudios.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1599
  Escenario: Guardar un Tipo de estudio con los campos en blanco (PDS-1599)
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
    * Click a TiposEstudios
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposEstudios.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida