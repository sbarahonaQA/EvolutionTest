# language: es

@organizacion
@estructura_organizativa
@gruposcorporativos
Característica: GruposCorporativos
  Pruebas para entidad GruposCorporativos (Grupos Corporativos)


  # El escenario usa funciones de javascript, como el id del botón "Permitir" en la pantalla de asignación de permisos de seguridad de contenido
  @test
  @Highest
  @PDS-1531
  Escenario: Crear un grupo corporativo con información básica (PDS-1531)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre | Creación Básica |
      | Pais   | gt              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Click a CerrarSesion
    * Se cargan elementos de la pagina Login.json
    *  Inicio sesion con usuario soporteit
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Configuracion
    * Se cargan elementos de la pagina configuracion/seguridad_acceso/SeguridadDeAcceso.json
    * Click a AsignacionPermisosSeguridadContenido
    * Se cargan elementos de la pagina configuracion/seguridad_acceso/AsignacionPermisosSeguridadContenido.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Gerente RRHH
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CreacionBasica
    # se utilizó el ID del grupo corporativo que se creará, el cual va cambiando, por lo que cada vez que se ejcute se debe revisar poner el ID del último grupo creado + 1
    * Click a Permitir
    * Click a AplicarCambios
    * Click a CerrarSesion
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creación Básica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre        | Creación Básica |
      | PaisTexto     | Guatemala       |

  @test
  @Highest
  @PDS-1534
  Escenario: Editar un grupo corporativo con información básica (PDS-1534)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre | Para Editado Información |
      | Pais   | sv                       |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Click a Regresar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editado Información
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre      | Para Editado Información |
      | PaisTexto   | El Salvador              |

  @test
  @Highest
  @PDS-1535
  Escenario: Eliminar un grupo corporativo (PDS-1535)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Grupo para Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros


  @test
  @Highest
  @PDS-1532
  Escenario: Consultar un grupo corporativo con información básica (PDS-1532)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Consulta Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO | 23              |
      | NombreRO | Consulta Basica |
      | PaisRO   | Guatemala       |

  @test
  @Highest
  @PDS-1530
  Escenario: Ver el listado de grupos corporativo (PDS-1530)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1533
  Escenario: Guardar un grupo corporativo con los campos en blanco (PDS-1533)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a GruposCorporativos
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/GruposCorporativos.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El Nombre es requerido
    * Prueba exitosa si elemento Mensaje contiene texto El País es requerida o no existe


