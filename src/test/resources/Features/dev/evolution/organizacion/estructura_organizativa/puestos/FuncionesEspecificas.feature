# language: es

@organizacion
@estructura_organizativa
@puestos
@funciones_especificas
Característica: FuncionesEspecificas
  Pruebas para entidad FuncionesEspecificas

  @test
  @Highest
  @PDS-6626
  Escenario: Crear una función específica de un puesto con información básica (PDS-6626)
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
    * Click a FuncionesEspecificas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesEspecificas.json
    * Click a Nuevo
    * Esperar que el elemento Orden este visible
    * Llenar formulario:
      | Orden          | 10              |
      | Definicion     | Creación Básica |
      | Frecuencia     | Mensual         |
      | codigoObjetivo | 6               |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Función específica de valor Creación Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Orden      | 10              |
      | Definicion | Creación Básica |
      | Frecuencia | Mensual         |
      | Objetivo   | Para Consulta   |

  @test
  @Highest
  @PDS-6630
  Escenario: Editar una función específica de un puesto con información básica (PDS-6630)
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
    * Click a FuncionesEspecificas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesEspecificas.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Función específica de valor Editar
    * Esperar que el elemento Orden este visible
    * Llenar formulario:
      | Orden          | 4               |
      | Definicion     | Prueba Editada  |
      | Frecuencia     | Eventuales      |
      | codigoObjetivo | 6               |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Función específica de valor Prueba Editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Orden      | 4               |
      | Definicion | Prueba Editada  |
      | Frecuencia | Eventuales      |
      | Objetivo   | Para Consulta   |

  @test
  @Highest
  @PDS-6631
  Escenario: Eliminar una función específica de un puesto (PDS-6631)
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
    * Click a FuncionesEspecificas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesEspecificas.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Función específica de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La función específica ha sido eliminada correctamente
    
  @test
  @Highest
  @PDS-6623
  Escenario: Consultar una función específica de un puesto con información básica (PDS-6623)
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
    * Click a FuncionesEspecificas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesEspecificas.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO     | 1              |
      | OrdenRO      | 0              |
      | DefinicionRO | Para Consultas |
      | FrecuenciaRO | Anual          |
      | ObjetivoRO   | Para Consulta  |

  @test
  @Highest
  @PDS-6634
  Escenario: Ver el listado de funciones específicas de un puesto (PDS-6634)
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
    * Click a FuncionesEspecificas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesEspecificas.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-6632
  Escenario: Guardar una función específica de un puesto con los campos en blanco (PDS-6632)
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
    * Click a FuncionesEspecificas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/FuncionesEspecificas.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto Favor seleccione un objetivo