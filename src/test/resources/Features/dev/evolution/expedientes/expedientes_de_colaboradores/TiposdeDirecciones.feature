# language: es

@expedientes
@expedientes_colaboradores
@tipo_de_direcciones
Característica: TiposDirecciones
  Pruebas para entidad TiposDirecciones (Tipos de Direcciones)

  @test
  @Highest
  @PDS-1607
  Escenario: Crear un Tipo de dirección con información básica (PDS-1607)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a TiposdeDirecciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDirecciones.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre   | Creacion Basica |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTiposdeDirecciones
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre   | Creacion Basica |

  @test
  @Highest
  @PDS-1609
  Escenario: Guardar un Tipo de dirección con los campos en blanco (PDS-1609)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a TiposdeDirecciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDirecciones.json
    * Click a Nuevo
    * Click a GuardarTiposdeDirecciones
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El nombre es requerido

  @test
  @Highest
  @PDS-1610
  Escenario: Editar un Tipo de dirección con información básica (PDS-1610)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a TiposdeDirecciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDirecciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre | Información Básica Editada |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarTiposdeDirecciones
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Información Básica Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre | Información Básica Editada |

  @test
  @Highest
  @PDS-1611
  Escenario: Eliminar un Tipo de dirección (PDS-1611)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a TiposdeDirecciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDirecciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1608
  Escenario: Consultar un Tipo de dirección con información básica (PDS-1608)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a TiposdeDirecciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDirecciones.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Residencia
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO | 1          |
      | NombreRO | Residencia |

  @test
  @Highest
  @PDS-1606
  Escenario: Ver el listado de Tipos de Direcciones (PDS-1606)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a TiposdeDirecciones
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/TiposdeDirecciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

