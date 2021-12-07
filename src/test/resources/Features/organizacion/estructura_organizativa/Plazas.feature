# language: es

@organizacion
@estructura_organizativa
@plazas
Característica: Plazas
  Pruebas para entidad Plazas (Plazas)

  @test
  @Highest
  @PDS-1727
  Escenario: Crear una plaza con información básica (PDS-1727)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Click a Nuevo
    * Llenar formulario:
      | Compania            | ASEINFO Corporativo |
      | Nombre              | Creación Básica     |
      | MaxEmpleados        | 2                   |
      | EsPresupuestada     | False               |
      | CodigoUnidad        | 10                  |
      | CodigoPuesto        | 18                  |
      | CodigoCentroTrabajo | 1                   |
      | EsTemporal          | False               |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado                   | Pendiente          |
      | Nombre                   | Creación Básica    |
      | MaxEmpleados             | 2                  |
      | EsPresupuestada          | False              |
      | CodigoUnidadTexto        | Operaciones        |
      | CodigoPuestoTexto        | Consultor Junior   |
      | CodigoCentroTrabajoTexto | Oficinas Centrales |
      | EsTemporal               | False              |

  @test
  @Highest
  @PDS-1736
  Escenario: Editar una plaza con información básica (PDS-1736)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre              | Plaza editada |
      | MaxEmpleados        | 10            |
      | EsPresupuestada     | True          |
      | CodigoUnidad        | 8             |
      | CodigoPuesto        | 29            |
      | CodigoCentroTrabajo | 17            |
      | EsTemporal          | True          |
      | FechaIni            | 01/01/2021    |
      | FechaFin            | 31/01/2021    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Plaza editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre                   | Plaza editada         |
      | MaxEmpleados             | 10                    |
      | EsPresupuestada          | True                  |
      | CodigoUnidadTexto        | Comercial             |
      | CodigoPuestoTexto        | Asistente de Gerencia |
      | CodigoCentroTrabajoTexto | Oficinas Sur          |
      | EsTemporal               | True                  |
      | FechaIni                 | 01/01/2021            |
      | FechaFin                 | 31/01/2021            |


  @test
  @Highest
  @PDS-1737
  Escenario: Eliminar una plaza (PDS-1737)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    # Se debe ordenar para que el registro de Nombre "Para Eliminar" quede primero en la lista
    * Click a Ordenar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1735
  Escenario: Consultar una plaza con información básica (PDS-1735)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Director Comercial CORP
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 6                       |
      | EstadoRO          | Vigente                 |
      | CompaniaRO        | ASEINFO Corporativo     |
      | NombreRO          | Director Comercial CORP |
      | MaxRO             | 100                     |
      | EsPresupuestadaRO | Si                      |
      | UnidadRO          | Comercial               |
      | PuestoRO          | Director Comercial      |
      | CentroTrabajoRO   | Oficinas Centrales      |
      | EsTemporalRO      | No                      |
      | FechaInicioRO     | 1/1/2010                |
      | FechaFinRO        | -----                   |

  @test
  @Highest
  @PDS-1726
  Escenario: Ver el listado de plazas (PDS-1726)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1734
  Escenario: Guardar una plaza con los campos en blanco (PDS-1734)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El nombre es requerido
    * Prueba exitosa si elemento Mensaje contiene texto La unidad es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El puesto es requerido
    * Prueba exitosa si elemento Mensaje contiene texto El centro de trabajo es requerido

  @test
  @Highest
  @PDS-3539
  Escenario: Guardar y procesar una plaza con información básica (PDS-3539)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Plazas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/Plazas.json
    * Click a Nuevo
    * Llenar formulario:
      | Compania            | ASEINFO Corporativo        |
      | Nombre              | Plaza autorizada sin flujo |
      | MaxEmpleados        | 2                          |
      | EsPresupuestada     | False                      |
      | CodigoUnidad        | 3                          |
      | CodigoPuesto        | 29                         |
      | CodigoCentroTrabajo | 1                          |
      | EsTemporal          | False                      |
      | FechaIni            | FechaHoy                   |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardaryProcesar
    #Esperando que el registro se autorice
    * Esperar 1 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Plaza autorizada sin flujo
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    #Esperando que los codecombos terminen de cargar
    * Esperar 1 segundos
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Estado                   | Vigente                    |
      | Nombre                   | Plaza autorizada sin flujo |
      | MaxEmpleados             | 2                          |
      | EsPresupuestada          | False                      |
      | CodigoUnidadTexto        | Recursos Humanos           |
      | CodigoPuestoTexto        | Asistente de Gerencia      |
      | CodigoCentroTrabajoTexto | Oficinas Centrales         |
      | EsTemporal               | False                      |
      | FechaIni                 | FechaHoy                   |