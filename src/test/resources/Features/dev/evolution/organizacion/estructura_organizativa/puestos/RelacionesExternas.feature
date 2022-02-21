# language: es

@organizacion
@estructura_organizativa
@puestos
@relaciones_externas
Característica: RelacionesExternas
  Pruebas para entidad RelacionesExternas (Relaciones Externas - Puestos)


  @test
  @Highest
  @PDS-6699
  Escenario: Crear una relación externa de puesto con información básica (PDS-6699)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RelacionesExternas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RelacionesExternas.json
    * Click a Nuevo
    * Esperar que el elemento Orden este visible
    * Llenar formulario:
      | Orden       | 10                |
      | Frecuencia  | Mensual           |
      | Institucion | Para Crear Básico |
      | Motivo      | Crear Básico      |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Institución de valor Para Crear Básico
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Orden       | 10                |
      | Frecuencia  | Mensual           |
      | Institucion | Para Crear Básico |
      | Motivo      | Crear Básico      |

  @test
  @Highest
  @PDS-6705
  Escenario: Editar una relación externa de puesto con información básica (PDS-6705)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RelacionesExternas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RelacionesExternas.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Institución de valor Para Editar
    * Esperar que el elemento Orden este visible
    * Llenar formulario:
      | Orden       | 30             |
      | Frecuencia  | Diaria         |
      | Institucion | Editado        |
      | Motivo      | Prueba Editada |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Institución de valor Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Orden       | 30             |
      | Frecuencia  | Diaria         |
      | Institucion | Editado        |
      | Motivo      | Prueba Editada |

  @test
  @Highest
  @PDS-6706
  Escenario: Eliminar una relación externa de puesto (PDS-6706)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RelacionesExternas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RelacionesExternas.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Institución de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Relación externa eliminada correctamente
    
  @test
  @Highest
  @PDS-6698
  Escenario: Consultar una relación externa de puesto con información básica (PDS-6698)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RelacionesExternas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RelacionesExternas.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO      | 1                   |
      | InstitucionRO | Para Consultas      |
      | OrdenRO       | 100                 |
      | FrecuenciaRO  | Trimestral          |
      | MotivoRO      | Prueba de Consulta  |

  @test
  @Highest
  @PDS-6708
  Escenario: Ver el listado de relaciones externas de puesto (PDS-6708)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RelacionesExternas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RelacionesExternas.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-6707
  Escenario: Guardar un relación externa de puesto con los campos en blanco (PDS-6707)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RelacionesExternas
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RelacionesExternas.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El campo Institución o Motivo debe de ser ingresado