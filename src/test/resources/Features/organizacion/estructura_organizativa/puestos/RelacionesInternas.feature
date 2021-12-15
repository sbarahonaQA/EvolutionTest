# language: es

@organizacion
@estructura_organizativa
@relaciones_internas
Característica: RelacionesInternas
  Pruebas para entidad RelacionesInternas (Relaciones Internas - Puestos)


  @test
  @Highest
  @PDS-6714
  Escenario: Crear una relación interna de puesto con información básica (PDS-6714)
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
    * Click a RelacionesInternas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/RelacionesInternas.json
    * Click a Nuevo
    * Esperar que el elemento Orden este visible
    * Llenar formulario:
      | Orden      | 30              |
      | Frecuencia | Mensual         |
      | Unidad     | 10              |
      | Motivo     | Creacion basica |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Motivo de valor Creacion basica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Orden       | 30              |
      | Frecuencia  | Mensual         |
      | UnidadTexto | Operaciones     |
      | Motivo      | Creacion basica |

  @test
  @Highest
  @PDS-6720
  Escenario: Editar una relación interna de puesto con información básica (PDS-6720)
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
    * Click a RelacionesInternas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/RelacionesInternas.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Motivo de valor Para Editar
    * Esperar que el elemento Orden este visible
    * Llenar formulario:
      | Orden      | 45              |
      | Frecuencia | Trimestral      |
      | Unidad     | 132             |
      | Motivo     | Motivo editado  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Motivo de valor Motivo editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Orden       | 45                       |
      | Frecuencia  | Trimestral               |
      | UnidadTexto | Aseguramiento de Calidad |
      | Motivo      | Motivo editado           |

  @test
  @Highest
  @PDS-6721
  Escenario: Eliminar una relación interna de puesto (PDS-6721)
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
    * Click a RelacionesInternas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/RelacionesInternas.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Motivo de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La relación interna ha sido eliminada correctamente
    
  @test
  @Highest
  @PDS-6713
  Escenario: Consultar una relación interna de puesto con información básica (PDS-6713)
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
    * Click a RelacionesInternas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/RelacionesInternas.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO     | 1                   |
      | OrdenRO      | 0                   |
      | MotivoRO     | Prueba de Consulta  |
      | FrecuenciaRO | Semestral           |
      | UnidadRO     | Atención al Cliente |

  @test
  @Highest
  @PDS-6723
  Escenario: Ver el listado de relaciones internas de puesto (PDS-6723)
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
    * Click a RelacionesInternas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/RelacionesInternas.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-6722
  Escenario: Guardar un relación interna de puesto con los campos en blanco (PDS-6722)
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
    * Click a RelacionesInternas
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/puestos/RelacionesInternas.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El campo Unidad o Motivo debe de ser ingresado