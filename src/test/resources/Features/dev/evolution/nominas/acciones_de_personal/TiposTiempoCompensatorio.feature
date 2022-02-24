# language: es

@nominas
@acciones_personal
@tipostiempocompensatorio
Característica: TiposTiempoCompensatorio
  Pruebas para entidad TiposTiempoCompensatorio (Tipos De Tiempo Compensatorio)

  @test
  @Highest
  @PDS-2309
  Escenario: Crear un tipo de tiempo compensatorio con información básica (PDS-2309)
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
    * Click a TiposTiempoCompensatorio
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposTiempoCompensatorio.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion                    | Creación básica |
      | TipoOperacionSaldo             | AcreditaSaldo   |
      | MaximoTransaccionesPorAnio     | 1               |
      | HorasMaximasAcumuladosPorAnio  | 2               |
      | MinutosMaximoAcumuladosPorAnio | 3               |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion                    | Creación básica |
      | TipoOperacionSaldo             | AcreditaSaldo   |
      | MaximoTransaccionesPorAnio     | 1               |
      | HorasMaximasAcumuladosPorAnio  | 2               |
      | MinutosMaximoAcumuladosPorAnio | 3               |

  @test
  @Highest
  @PDS-2312
  Escenario: Editar un tipo de tiempo compensatorio con información básica (PDS-2312)
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
    * Click a TiposTiempoCompensatorio
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposTiempoCompensatorio.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion                    | Editado       |
      | TipoOperacionSaldo             | AcreditaSaldo |
      | MaximoTransaccionesPorAnio     | 4             |
      | HorasMaximasAcumuladosPorAnio  | 5             |
      | MinutosMaximoAcumuladosPorAnio | 6             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion                    | Editado       |
      | TipoOperacionSaldo             | AcreditaSaldo |
      | MaximoTransaccionesPorAnio     | 4             |
      | HorasMaximasAcumuladosPorAnio  | 5             |
      | MinutosMaximoAcumuladosPorAnio | 6             |

  @test
  @Highest
  @PDS-2313
  Escenario: Eliminar un tipo de tiempo compensatorio (PDS-2313)
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
    * Click a TiposTiempoCompensatorio
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposTiempoCompensatorio.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-2310
  Escenario: Consultar un tipo de tiempo compensatorio con información básica (PDS-2310)
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
    * Click a TiposTiempoCompensatorio
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposTiempoCompensatorio.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                         | 26            |
      | DescripcionRO                    | Consulta      |
      | MaximoTransaccionesPorAnioRO     | 1             |
      | HorasMaximasAcumuladosPorAnioRO  | 20            |
      | MinutosMaximoAcumuladosPorAnioRO | 23            |



  @test
  @Highest
  @PDS-2308
  Escenario: Ver el listado de Tipos de tiempo compensatorio (PDS-2308)
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
    * Click a TiposTiempoCompensatorio
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposTiempoCompensatorio.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-2311
  Escenario: Guardar un tipo de tiempo compensatorio con los campos en blanco (PDS-2311)
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
    * Click a TiposTiempoCompensatorio
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposTiempoCompensatorio.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripcion es requerida