# language: es

@organizacion
@estructura_organizativa
@Objetivo_estrategico
Característica: ObjetivosEstrategicos
Pruebas para entidad ObjetivosEstrategicos

  @test
  @Highest
  @PDS-1416
  Escenario: Crear un objetivo estratégico con información básica (PDS-1416)
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
    * Click a ObjetivoEstrategico
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ObjetivoEstrategico.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion   | Creacion Basica |
      | Orden         | 1               |
      | EsCorporativo | True            |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarObjetivoEstrategico
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Creacion Basica |
      | Orden            | 1               |
      | EsCorporativo    | True            |
      | GrupoCorporativo | Aseinfo         |

  @test
  @Highest
  @PDS-1420
  Escenario: Editar un objetivo estratégico con información básica (PDS-1420)
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
    * Click a ObjetivoEstrategico
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ObjetivoEstrategico.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion   | Registro Editado    |
      | Orden         | 8                   |
      | EsCorporativo | False               |
      | Compania      | ASEINFO Corporativo |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarObjetivoEstrategico
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Registro Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion      | Registro Editado    |
      | Orden            | 8                   |
      | EsCorporativo    | False               |
      | Compania         | ASEINFO Corporativo |
      | GrupoCorporativo | Aseinfo             |

  @test
  @Highest
  @PDS-1418
  Escenario: Consultar un objetivo estrategico con información básica (PDS-1418)
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
    * Click a ObjetivoEstrategico
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ObjetivoEstrategico.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consultar Archivo y Campo Adicional
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
    | CodigoRO           | 13                                  |
    | DescripcionRO      | Consultar Archivo y Campo Adicional |
    | OrdenRO            | 5                                   |
    | CompaniaRO         | Corporativo                         |
    | GrupoCorporativoRO | Aseinfo                             |

  @test
  @Highest
  @PDS-1422
  Escenario: Eliminar un objetivo estrategico (PDS-1422)
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
    * Click a ObjetivoEstrategico
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ObjetivoEstrategico.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1419
  Escenario: Guardar un objetivo estratégico con los campos en blanco (PDS-1419)
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
    * Click a ObjetivoEstrategico
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ObjetivoEstrategico.json
    * Click a Nuevo
    * Click a GuardarObjetivoEstrategico
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripcion del objetivo estrategico es requerido

  @test
  @Highest
  @PDS-1414
  Escenario: Ver el listado de objetivos estratégicos (PDS-1414)
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
    * Click a ObjetivoEstrategico
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ObjetivoEstrategico.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
    | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |