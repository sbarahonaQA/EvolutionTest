# language: es

@organizacion
@estructura_organizativa
@puestos
@objetivos_del_puesto
Característica: ObjetivosPuesto
  Pruebas para entidad ObjetivosPuesto


  @test
  @Highest
  @PDS-6670
  Escenario: Crear un objetivo de puesto con información básica (PDS-6670)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ObjetivosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ObjetivosPuesto.json
    * Click a Nuevo
    * Esperar que el elemento Definicion este visible
    * Llenar formulario:
      | Definicion                | Crear Basico |
      | Orden                     | 2            |
      | CodigoObjetivoEstrategico | 13           |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Definición de valor Crear Basico
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Definicion          | Crear Basico                        |
      | Orden               | 2                                   |
      | ObjetivoEstrategico | Consultar Archivo y Campo Adicional |

  @test
  @Highest
  @PDS-6674
  Escenario: Editar un objetivo de puesto con información básica (PDS-6674)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ObjetivosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ObjetivosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Definición de valor Prueba de Editar
    * Esperar que el elemento Definicion este visible
    * Llenar formulario:
      | Definicion                | Prueba Editada |
      | Orden                     | 5              |
      | CodigoObjetivoEstrategico | 13             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Definición de valor Prueba Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Definicion          | Prueba Editada                      |
      | Orden               | 5                                   |
      | ObjetivoEstrategico | Consultar Archivo y Campo Adicional |

  @test
  @Highest
  @PDS-6675
  Escenario: Eliminar un objetivo de puesto (PDS-6675)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ObjetivosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ObjetivosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Definición de valor para eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Objetivo del puesto eliminado correctamente
    
  @test
  @Highest
  @PDS-6667
  Escenario: Consultar un objetivo de puesto con información básica (PDS-6667)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ObjetivosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ObjetivosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO              | 6                                   |
      | DefinicionRO          | Para Consulta                       |
      | OrdenRO               | 1                                   |
      | ObjetivoEstrategicoRO | Consultar Archivo y Campo Adicional |

  @test
  @Highest
  @PDS-6677
  Escenario: Ver el listado de objetivos de puestos (PDS-6677)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ObjetivosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ObjetivosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-6676
  Escenario: Guardar un objetivo de puesto con los campos en blanco (PDS-6676)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a ObjetivosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ObjetivosPuesto.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La definición es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El objetivo estrategico es requerido