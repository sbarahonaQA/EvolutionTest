# language: es

@organizacion
@estructura_organizativa
@prestaciones
Característica: Prestaciones
  Pruebas para entidad Prestaciones (Prestaciones)

  @test
  @Highest
  @PDS-1425
  Escenario: Crear una prestación con información básica (PDS-1425)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Prestaciones
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Prestaciones.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion         | Prestación Básica    |
      | Compania            | ASEINFO Corporativo  |
      | Valor               | 5                    |
      | Tipo                | Dias                 |
      | EsPagDirecto        | False                |
      | EnLiquidacion       | True                 |
      | Frecuencia          | Diaria               |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prestación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion         | Prestación Básica    |
      | Compania            | ASEINFO Corporativo  |
      | Valor               | 5                    |
      | Tipo                | Dias                 |
      | EsPagDirecto        | False                |
      | EnLiquidacion       | True                 |
      | Frecuencia          | Diaria               |

  @test
  @Highest
  @PDS-1429
  Escenario: Editar una prestación con información básica (PDS-1429)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Prestaciones
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Prestaciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion         | Descripción Editada  |
      | Compania            | ASEINFO Corporativo  |
      | Valor               | 4                    |
      | Tipo                | Horas                |
      | EsPagDirecto        | True                 |
      | TipoDeIngreso       | 1                    |
      | EnLiquidacion       | False                |
      | Frecuencia          | Anual                |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Descripción Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion         | Descripción Editada  |
      | Compania            | ASEINFO Corporativo  |
      | Valor               | 4                    |
      | Tipo                | Horas                |
      | EsPagDirecto        | True                 |
      | TipoDeIngresoTexto  | Salario              |
      | EnLiquidacion       | False                |
      | Frecuencia          | Anual                |

  @test
  @Highest
  @PDS-1430
  Escenario: Eliminar una prestación (PDS-1430)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Prestaciones
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Prestaciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1427
  Escenario: Consultar una prestación con información básica (PDS-1427)
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
    * Click a Prestaciones
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Prestaciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Consulta Archivo y Campo
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                | 4                                |
      | DescripcionRO           | Para Consulta Archivo y Campo    |
      | ValorRO                 | 3.00                             |
      | TipoRO                  | Horas                            |
      | PagoDirectoRO           | No                               |
      | TipoIngresoRO           | -----                            |
      | EnLiquidacionRO         | Si                               |
      | FrecuenciaRO            | Anual                            |
      | CompaniaRO              | ASEINFO Corporativo              |
  @test
  @Highest
  @PDS-1424
  Escenario: Ver el listado de prestaciones (PDS-1424)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Prestaciones
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Prestaciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1428
  Escenario: Guardar una prestación con los campos en blanco (PDS-1428)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a Prestaciones
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Prestaciones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La moneda es requerida