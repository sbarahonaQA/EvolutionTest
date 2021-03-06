# language: es

@organizacion
@estructura_organizativa
@frecuencias
Característica: Frecuencias
  Pruebas para entidad Frecuencias


  @test
  @Highest
  @PDS-1375
Escenario: Crear una frecuencia con información básica (PDS-1375)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Frecuencias
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Frecuencias.json
    * Click a Nuevo
    * Llenar formulario:
    | Descripcion | Creacion Basica |
    | Abreviatura | CB-PDS1375      |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarFrecuencia
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Esperar a que aparezca el texto Creacion Basica en el elemento ColumnaDescripcionDePrimerElementoDeSmartlist
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Creacion Basica |
      | Abreviatura | CB-PDS1375      |

  @test
  @Highest
  @PDS-1384
  Escenario: Editar una frecuencia con información básica (PDS-1384)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Frecuencias
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Frecuencias.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Editado |
      | Abreviatura | E1384   |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarFrecuencia
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Editado |
      | Abreviatura | E1384   |

  @test
  @Highest
  @PDS-1386
  Escenario: Eliminar una frecuencia (PDS-1386)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Frecuencias
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Frecuencias.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 14
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1379
  Escenario: Consultar una frecuencia con información básica (PDS-1379)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Frecuencias
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Frecuencias.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 12
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 12       |
      | DescripcionRO | consulta |
      | AbreviaturaRO | c        |

  @test
  @Highest
  @PDS-1374
  Escenario: Ver el listado de frecuencias (PDS-1374)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Frecuencias
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Frecuencias.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |


  @test
  @Highest
  @PDS-1383
  Escenario: Guardar una frecuencia con los campos en blanco (PDS-1383)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Frecuencias
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Frecuencias.json
    * Click a Nuevo
    * Click a GuardarFrecuencia
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida