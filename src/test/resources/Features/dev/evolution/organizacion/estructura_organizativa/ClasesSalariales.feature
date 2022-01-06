# language: es

@organizacion
@estructura_organizativa
@clases_salariales
Característica: ClasesSalariales
  Pruebas para entidad ClasesSalariales

  @test
  @Highest
  @PDS-1663
  Escenario: Crear una clase salarial con información básica (PDS-1663)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ClasesSalariales.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Información Básica |
      | AsignaA     | True               |
    * Esperar que el elemento Pais este presente
    * Llenar formulario:
      | Pais          | gt                  |
    * Adjuntar captura de pantalla al reporte
    # Se debe seleccionar o hacer clic en cualquier parte de la pantlla para que se reconozca el país en el combotext
    * Click a Minimo
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Información Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Información Básica |
      | AsignaA     | True               |
      | Pais        | gt                 |


  @test
  @Highest
  @PDS-1672
  Escenario: Editar una clase salarial con información básica (PDS-1672)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ClasesSalariales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Clase Salarial para Edición
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Edicion Basica |
      | AsignaA     | True           |
    * Esperar que el elemento Pais este presente
    * Llenar formulario:
      | Pais | gt |
    # Se debe seleccionar o hacer clic en cualquier parte de la pantlla para que se reconozca el país en el combotext
    * Click a Minimo
    * Llenar formulario:
      | Minimo        | 2000       |
      | Medio         | 3000       |
      | Maximo        | 4000       |
      | TipoValuacion | Por puntos |
      | Inicial       | 1          |
      | Final         | 10         |
      | Estado        | NoVigente  |
      | FechaInicio   | 01/01/2021 |
      | FechaFin      | 31/12/2021 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Edicion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion   | Edicion Basica |
      | AsignaA       | True           |
      | Pais          | gt             |
      | Minimo        | 2000           |
      | Medio         | 3000           |
      | Maximo        | 4000           |
      | TipoValuacion | Por punto      |
      | Inicial       | 1              |
      | Final         | 10             |
      | Estado        | NoVigente      |
      | FechaInicio   | 1/1/2021       |
      | FechaFin      | 31/12/2021     |


  @test
  @Highest
  @PDS-1673
  Escenario: Eliminar una clase salarial (PDS-1673)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ClasesSalariales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Clase Salarial para Eliminación
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Validar informacion:
      | ElementosMostrados | No hay registros. |

  @test
  @Highest
  @PDS-1670
  Escenario: Consultar una clase salarial con información básica (PDS-1670)
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
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ClasesSalariales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino A consultar
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 51           |
      | DescripcionRO   | A consultar  |
      | AsignaRO        | True         |
      | PaisRO          | Guatemala    |
      | MínimoRO        | 125.36       |
      | MedioRO         | 569.78       |
      | MáximoRO        | 5,479.36     |
      | TipoValuacionRO | Por Matrices |
      | InicialRO       | 5            |
      | FinalRO         | 25           |
      | EstadoRO        | Vigente      |
      | FechaInicioRO   | 31/12/2000   |
      | FechaFinRO      | 15/12/2020   |

  @test
  @Highest
  @PDS-1662
  Escenario: Ver el listado de clases salariales (PDS-1662)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ClasesSalariales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1671
  Escenario: Guardar una clase salarial con los campos en blanco (PDS-1671)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a ClasesSalariales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ClasesSalariales.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida