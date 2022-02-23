# language: es

@nominas
@acciones_personal
@tipoincrementos
Característica: TiposIncrementos
  Pruebas para entidad TiposIncrementos (Tipos de Incrementos)

  @test
  @Highest
  @PDS-2770
  Escenario: Crear un tipo incremento con información básica (PDS-2770)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a TiposIncrementos
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncrementos.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion             | Creación Básica |
      | TieneMovimientoAsociado | True            |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion             | Creación Básica |
      | TieneMovimientoAsociado | True            |

  @test
  @Highest
  @PDS-2773
  Escenario: Editar un tipo incremento con información básica (PDS-2773)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a TiposIncrementos
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncrementos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion             | Editado |
      | TieneMovimientoAsociado | False   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion             | Editado |
      | TieneMovimientoAsociado | False   |

  @test
  @Highest
  @PDS-2774
  Escenario: Eliminar un tipo incremento (PDS-2774)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a TiposIncrementos
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncrementos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-2771
  Escenario: Consultar un tipo incremento con información básica (PDS-2771)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a TiposIncrementos
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncrementos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                  | 44       |
      | DescripcionRO             | Consulta |
      | TieneMovimientoAsociadoRO | No       |


  @test
  @Highest
  @PDS-2769
  Escenario: Ver el listado de Tipos Incrementos (PDS-2769)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a TiposIncrementos
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncrementos.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-2772
  Escenario: Guardar un tipo incremento con los campos en blanco (PDS-2772)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina dev/evolution/nominas/Nominas.json
    * Click a AccionesPersonal
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/AccionesPersonal.json
    * Click a OtrasOpciones
    * Click a TiposIncrementos
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncrementos.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida