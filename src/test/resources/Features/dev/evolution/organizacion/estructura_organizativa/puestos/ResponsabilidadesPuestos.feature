# language: es

@organizacion
@estructura_organizativa
@puestos
@responsabilidades
Característica: ResponsabilidadesPuesto
  Pruebas para entidad ResponsabilidadesPuesto

  @test
  @Highest
  @PDS-6733
  Escenario: Crear una responsabilidad de puesto con información básica (PDS-6733)
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
    * Click a ResponsabilidadesPuestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ResponsabilidadesPuestos.json
    * Click a Nuevo
    * Esperar que el elemento Observacion este visible
    * Llenar formulario:
      | CodigoResponsabilidad | 5 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Responsabilidad de valor Control de Calidad en los procesos de Desarrollo de mejoras a nuestros productos
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Responsabilidad | Control de Calidad en los procesos de Desarrollo de mejoras a nuestros productos |

  @test
  @Highest
  @PDS-6739
  Escenario: Editar una responsabilidad de puesto con información básica (PDS-6739)
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
    * Click a ResponsabilidadesPuestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ResponsabilidadesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Observacion de valor Observacion para editar
    * Esperar que el elemento Observacion este visible
    * Llenar formulario:
      | CodigoResponsabilidad | 3                   |
      | Observacion           | Observación editada |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Observacion de valor Observación editada
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Responsabilidad | Manejo y Control de Licenciamiento de Productos de Terceros |
      | Observacion     | Observación editada                                         |

  @test
  @Highest
  @PDS-6740
  Escenario: Eliminar una responsabilidad de puesto (PDS-6740)
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
    * Click a ResponsabilidadesPuestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ResponsabilidadesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Responsabilidad de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Responsabilidad del puesto eliminado correctamente

  @test
  @Highest
  @PDS-6732
  Escenario: Consultar una responsabilidad de puesto con información básica(PDS-6732)
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
    * Click a ResponsabilidadesPuestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ResponsabilidadesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 1                                 |
      | ResponsabilidadRO | Para Consulta de Archivos y Campo |
      | ObservacionRO     | Para prueba de consulta           |

  @test
  @Highest
  @PDS-6742
  Escenario: Ver el listado de responsabilidades de puesto (PDS-6742)
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
    * Click a ResponsabilidadesPuestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ResponsabilidadesPuestos.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-6741
  Escenario: Guardar un responsabilidad de puesto con los campos en blanco (PDS-6741)
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
    * Click a ResponsabilidadesPuestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/ResponsabilidadesPuestos.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La responsabilidad es requerida