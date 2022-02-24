# language: es

@nominas
@acciones_personal
@tiposincapacidad
Característica: TiposIncapacidad
  Pruebas para entidad TiposIncapacidad (Tipos de Incapacidad)

  @test
  @Highest
  @PDS-2291
  Escenario: Crear un tipo de incapacidad con información básica (PDS-2291)
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
    * Click a TiposIncapacidad
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncapacidad.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Creación Básica |
      | EsAccidente | False           |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion | Creación Básica |
      | EsAccidente | False           |

  @test
  @Highest
  @PDS-2294
  Escenario: Editar un tipo de incapacidad con información básica (PDS-2294)
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
    * Click a TiposIncapacidad
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncapacidad.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion         | Editado |
      | codigoTipoDescuento | 3       |
      | codigoTipoIngreso   | 14      |
      | EsAccidente         | True    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion   | Editado            |
      | TipoDescuento | AFP                |
      | TipoIngreso   | Anticipo de Sueldo |
      | EsAccidente   | True               |

  @test
  @Highest
  @PDS-2295
  Escenario: Eliminar un tipo de incapacidad (PDS-2295)
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
    * Click a TiposIncapacidad
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncapacidad.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-2292
  Escenario: Consultar un tipo de incapacidad con información básica (PDS-2292)
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
    * Click a TiposIncapacidad
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncapacidad.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 408      |
      | DescripcionRO     | Consulta |
      | AplicaAccidenteRO | No       |


  @test
  @Highest
  @PDS-2290
  Escenario: Ver el listado de Tipos de incapacidad (PDS-2290)
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
    * Click a TiposIncapacidad
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncapacidad.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-2293
  Escenario: Guardar un tipo de incapacidad con los campos en blanco (PDS-2293)
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
    * Click a TiposIncapacidad
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposIncapacidad.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerido