# language: es

@organizacion
@estructura_organizativa
@tipos_unidades
Característica: TiposUnidades
  Pruebas para entidad TiposUnidades

  @test
  @Highest
  @PDS-5097
  Escenario: Crear un Tipo de Unidades con información básica (PDS-5097)
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
    * Click a TiposUnidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/TiposUnidades.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre | Creación Básica |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoUnidad
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Nombre contiene texto Creación Básica

  @test
  @Highest
  @PDS-5094
  Escenario: Editar un Tipo de Unidades con información básica (PDS-5094)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposUnidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/TiposUnidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 19
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre | Registro Editado |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTipoUnidad
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 19
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Nombre contiene texto Registro Editado

  @test
  @Highest
  @PDS-5093
  Escenario: Eliminar un Tipo de Unidades (PDS-5093)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposUnidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/TiposUnidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 20
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-5096
  Escenario: Consultar un Tipo de Unidades con información básica (PDS-5096)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a TiposUnidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/TiposUnidades.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino General
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 1       |
      | NombreRO          | General |
      | GrupoCoporativoRO | Aseinfo |

  @test
  @Highest
  @PDS-1517
  Escenario: Ver el listado de tipos de unidades (PDS-1517)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Esperar que el elemento TiposUnidades este presente
    * Click a TiposUnidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/TiposUnidades.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-5095
  Escenario: Guardar un Tipo de Unidades con los campos en blanco (PDS-5095)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Esperar que el elemento TiposUnidades este presente
    * Click a TiposUnidades
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/TiposUnidades.json
    * Click a Nuevo
    * Click a GuardarTipoUnidad
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El nombre es requerido