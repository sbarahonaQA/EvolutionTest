# language: es

@expedientes
@expedientes_colaboradores
@tipos_de_documentos
Característica: TiposDocumentos
  Pruebas para entidad TiposDocumentos (Tipos de Documentos)

  @test
  @Highest
  @PDS-1575
  Escenario: Crear un Tipos de Documentos con información básica (PDS-1575)
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
    * Click a TiposdeDocumentos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDocumentos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Tipo de documento PDS-1575 |
      | Abreviatura | PDS-1575                   |
      | codigoPais  | gt                         |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoDocumento
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Tipo de documento PDS-1575
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Tipo de documento PDS-1575 |
      | Abreviatura | PDS-1575                   |
      | Pais        | Guatemala                  |

  @test
  @Highest
  @PDS-1577
  Escenario: Guardar un Tipo de Documento con los campos en blanco (PDS-1577)
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
    * Click a TiposdeDocumentos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDocumentos.json
    * Click a Nuevo
    * Click a GuardarTipoDocumento
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El pais es requerida

  @test
  @Highest
  @PDS-1578
  Escenario: Editar un Tipos de Documentos con información básica(PDS-1578)
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
    * Click a TiposdeDocumentos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDocumentos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion            | Consulta Editada    |
      | Abreviatura            | Ceditada            |
      | codigoPais             | co                  |
      | ExpresionRegular       | Prueba Editada      |
      | MascaraFormato         | Prueba Editada      |
      | MensajeErrorValidacion | Prueba Editada      |
      | FormatoNombreCompleto  | {0} {1} {2} {3} {4} |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoDocumento
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion            | Consulta Editada    |
      | Abreviatura            | Ceditada            |
      | Pais                   | Colombia            |
      | ExpresionRegular       | Prueba Editada      |
      | MascaraFormato         | Prueba Editada      |
      | MensajeErrorValidacion | Prueba Editada      |
      | FormatoNombreCompleto  | {0} {1} {2} {3} {4} |

  @test
  @Highest
  @PDS-1579
  Escenario: Eliminar un Tipo de documento (PDS-1579)
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
    * Click a TiposdeDocumentos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDocumentos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1576
  Escenario: Consultar un Tipo de Documento con información básica (PDS-1576)
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
    * Click a TiposdeDocumentos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDocumentos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta Documento
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                 | 49                 |
      | DescripcionRO            | Consulta Documento |
      | AbreviaturaRO            | CD                 |
      | PaisRO                   | Guatemala          |
      | ExpresionRegularRO       | Prueba Test        |
      | MascaraFormatoRO         | Prueba             |
      | MensajeErrorValidacionRO | Prueba Test        |
      | FormatoNombreCompletoRO  | 4512               |

  @test
  @Highest
  @PDS-1574
  Escenario: Ver el listado de Tipos de Documentos (PDS-1574)
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
    * Click a TiposdeDocumentos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDocumentos.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

