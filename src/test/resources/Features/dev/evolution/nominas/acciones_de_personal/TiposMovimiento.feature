# language: es

@nominas
@acciones_personal
@tiposmovimiento
Característica: TiposMovimiento
  Pruebas para entidad TiposMovimiento (Tipos de Movimiento)

  @test
  @Highest
  @PDS-2297
  Escenario: Crear un tipo de movimiento con información básica (PDS-2297)
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
    * Click a TiposMovimiento
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposMovimiento.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion                  | Creación básica |
      | GeneraIncremento             | True            |
      | EstadoPlazaAlAutorizar       | Vigente         |
      | PermiteTrasladoEntreEmpresas | False           |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion                  | Creación básica |
      | GeneraIncremento             | True            |
      | EstadoPlazaAlAutorizar       | Vigente         |
      | PermiteTrasladoEntreEmpresas | False           |

  @test
  @Highest
  @PDS-2300
  Escenario: Editar un tipo de movimiento con información básica (PDS-2300)
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
    * Click a TiposMovimiento
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposMovimiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion                  | Editado                     |
      | GeneraIncremento             | False                       |
      | EstadoPlazaAlAutorizar       | Vigente                     |
      | PermiteTrasladoEntreEmpresas | True                        |
      | CategoriaRetiro              | Despido                     |
      | MotivoRetiro                 | Despido con Responsabilidad |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion                  | Editado                     |
      | GeneraIncremento             | False                       |
      | EstadoPlazaAlAutorizar       | Vigente                     |
      | PermiteTrasladoEntreEmpresas | True                        |
      | CategoriaRetiro              | Despido                     |
      | MotivoRetiro                 | Despido con Responsabilidad |

  @test
  @Highest
  @PDS-2301
  Escenario: Eliminar un tipo de movimiento (PDS-2301)
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
    * Click a TiposMovimiento
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposMovimiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-2298
  Escenario: Consultar un tipo de movimiento con información básica (PDS-2298)
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
    * Click a TiposMovimiento
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposMovimiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Consulta
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                     | 11            |
      | DescripcionRO                | Para Consulta |
      | PuedeAsociarseIncrementoRO   | Sí            |
      | EstadoPlazaRO                | Vigente       |
      | PermiteTrasladoEntreEmpresas | False         |


  @test
  @Highest
  @PDS-2296
  Escenario: Ver el listado de Tipos de movimiento (PDS-2296)
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
    * Click a TiposMovimiento
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposMovimiento.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-2299
  Escenario: Guardar un tipo de movimiento con los campos en blanco (PDS-2299)
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
    * Click a TiposMovimiento
    * Se cargan elementos de la pagina dev/evolution/nominas/acciones_de_personal/TiposMovimiento.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida