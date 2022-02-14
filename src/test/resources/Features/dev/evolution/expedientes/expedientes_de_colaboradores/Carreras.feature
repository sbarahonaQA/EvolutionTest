# language: es

@expedientes
@expedientes_colaboradores
@carreras
Característica: Carreras
  Pruebas para entidad carreras

  @test
  @Highest
  @PDS-1479
  Escenario: Crear una Carrera con información básica (PDS-1479)
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
    * Click a Carreras
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Carreras.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion       | Crear Basico  |
      | Reconocida        | False         |
      | codigoTipoEstudio | UNIVERSITARIO |
      | Pais              | True          |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Crear Basico
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion       | Crear Basico  |
      | Reconocida        | False         |
      | codigoTipoEstudio | UNIVERSITARIO |
      | Pais              | True          |

  @test
  @Highest
  @PDS-1482
  Escenario: Editar una Carrera con información básica (PDS-1482)
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
    * Click a Carreras
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Carreras.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion       | Prueba Editada |
      | Abreviatura       | PEH            |
      | Incremento        | 10             |
      | Reconocida        | True           |
      | codigoTipoEstudio | TECNICO        |
      | Pais              | False          |
      | codigoPais        | gt             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion       | Prueba Editada |
      | Abreviatura       | PEH            |
      | Incremento        | 10             |
      | Reconocida        | True           |
      | codigoTipoEstudio | TECNICO        |
      | Pais              | False          |
      | codigoPais_Text   | Guatemala      |

  @test
  @Highest
  @PDS-1483
  Escenario: Eliminar una Carrera (PDS-1483)
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
    * Click a Carreras
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Carreras.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar Basico
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1480
  Escenario: Consultar una Carrera con información básica (PDS-1480)
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
    * Click a Carreras
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Carreras.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino EDUCACION BASICA O DIVERSIFICADO
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 8                                |
      | DescripcionRO | EDUCACION BASICA O DIVERSIFICADO |
      | AbreviaturaRO | MEDIA                            |
      | ReconocidaRO  | No                               |
      | TipoEstudioRO | EDUCACION MEDIA O DIVERSIFICADO  |
      | PaisRO        | Todos                            |


  @test
  @Highest
  @PDS-1478
  Escenario: Ver el listado de Carreras (PDS-1478)
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
    * Click a Carreras
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Carreras.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1481
  Escenario: Guardar una Carrera con los campos en blanco (PDS-1481)
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
    * Click a Carreras
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Carreras.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
