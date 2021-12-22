# language: es

@organizacion
@estructura_organizativa
@Competencias_Tecnicas_por_puesto
Característica: CompetenciasTécnicasdelPuesto
  Pruebas para entidad CompetenciasTécnicasdelPuesto

  @test
  @Highest
  @PDS-6572
  Escenario: Crear una competencia tecnica de un puesto con información básica(PDS-6572)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Puesto
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasTécnicas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CompetenciasTécnicas.json
    * Click a NuevaCompetenciaTecnicaPuesto
    * Esperar que el elemento Descripcion este visible
    * Llenar formulario:
      | Competencia                  | Técnicas de redacción persuasiva |
      | Descripcion                  | Con información Básica           |
      | Orden                        | 5                                |
      | Peso                         | 25                               |
      | NivelCumplimiento            | 3                                |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar 4 segundos
    * Esperar que el elemento Tabla este visible
    #Las funciones de eliminar y editar se encuentra al revez
    * Eliminar registro con columna Descripcion de valor Con información Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Competencia                  | Técnicas de redacción persuasiva |
      | Descripcion                  | Con información Básica           |
      | Orden                        | 5                                |
      | Peso                         | 25                               |
      | NivelCumplimiento            | 3                                |


  @test
  @Highest
  @PDS-6576
  Escenario: Editar una competencia tecnica de un puesto con información básica (PDS-6576)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasTécnicas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CompetenciasTécnicas.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Descripcion de valor Para Editar
    * Esperar que el elemento Descripcion este visible
    * Llenar formulario:
      | Competencia                  | Conocimiento de informática básico (herramientas Office)|
      | Descripcion                  | Competencia técnica Editada      |
      | Orden                        | 10                               |
      | Peso                         | 25                               |
      | NivelCumplimiento            | 1                                |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar 4 segundos
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Descripcion de valor Conocimiento de informática básico (herramientas Office)
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      #| Codigo        | 5              |
      | Competencia                  | Conocimiento de informática básico (herramientas Office)|
      | Descripcion                  | Competencia técnica Editada      |
      | Orden                        | 10                               |
      | Peso                         | 25                               |
      | NivelCumplimiento            | 1                                |

  @test
  @Highest
  @PDS-6577
  Escenario: Eliminar una Competencias Técnicas de un puesto (PDS-6577)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasTécnicas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CompetenciasTécnicas.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Descripcion de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Competencia Tecnica eliminado correctamente

  @test
  @Highest
  @PDS-6569
  Escenario: Consultar una Competencia Técnica de un puesto con información básica (PDS-6569)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasTécnicas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CompetenciasTécnicas.json
    * Esperar que el elemento Tabla este visible
    #ESTA DIFERENTE EL CONSULTAR DA ERROR
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                       | 20              |
      | CompetenciaRO                  | Conocimiento de informática básico (herramientas Office) |
      | DescripcionRO                  | Para Consultar          |
      | OrdenRO                        | 8                       |
      | PesoRO                         | 30                      |
      | NivelCumplimientoRO            | 0                       |

  @test
  @Highest
  @PDS-6578
  Escenario: Guardar una competencia tecnica de un puesto con los campos en blanco (PDS-6578)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Prueba de Consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasTécnicas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CompetenciasTécnicas.json
    * Click a NuevaCompetenciaTecnicaPuesto
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto Campo Descripción es requerido

  @test
  @Highest
  @PDS-6580
  Escenario: Ver el listado una competencia tecnica de un puesto(PDS-6580)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 	Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CompetenciasTécnicas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/CompetenciasTécnicas.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | NuevaCompetenciaTecnicaPuesto | Tabla | RegresarListado |