# language: es

@expedientes
@expedientes_colaboradores
@Asociaciones
Característica: Asociaciones
  Pruebas para entidad Asociaciones (Asociaciones)

  @test
  @Highest
  @PDS-1492
  Escenario: Crear una Asociaciones con información básica (PDS-1492)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Asociaciones.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion   | Reparación y asociados |
      | Abreviatura   | RYA |
      | Naturaleza    | Obrera |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarAsociacion
    * Esperar 4 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Reparación y asociados
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion   | Reparación y asociados |
      | Abreviatura   | RYA |
      | Naturaleza    | Obrera |


  @test
  @Highest
  @PDS-1494
  Escenario: Guardar una Asociaciones con los campos en blanco (PDS-1494)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Asociaciones.json
    * Click a Nuevo
    * Click a GuardarAsociacion
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

  @test
  @Highest
  @PDS-1495
  Escenario: Editar una Asociaciones con información básica(PDS-1495)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Asociaciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion   | Editado |
      | Abreviatura   | Edit    |
      | Naturaleza    | Obreras |
      | Porcentaje    | 38      |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarAsociacion
    * Esperar 3 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion   | Editado |
      | Abreviatura   | Edit    |
      | Naturaleza    | Obreras |
      | Porcentaje    | 38      |

  @test
  @Highest
  @PDS-1496
  Escenario: Eliminar una Asociaciones (PDS-1496)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Asociaciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1493
  Escenario: Consultar una Asociaciones con información básica (PDS-1493)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Asociaciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Sociedad de Ingenieros
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 38 |
      | DescripcionRO   | Sociedad de Ingenieros |
      | AbreviaturaRO   | ASIA    |
      | NaturalezaRO    | ONG |
      | PorcentajeRO    | 45.00%  |

  @test
  @Highest
  @PDS-1491
  Escenario: Ver el listado de Asociaciones (PDS-1491)
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
    * Click a Asociaciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Asociaciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

