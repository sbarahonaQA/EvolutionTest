# language: es

@example
Característica: AreasFuncionales
  Pruebas para entidad AreasFuncionales

 @test
 @organizacion
 @estructura_organizativa
 @areas_funcionales
 @Highest
 @PDS-1217
 Escenario: Crear un área funcional con información básica (PDS-1217)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a AreasFuncionales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/AreasFuncionales.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre | Área Funcional 1 |
     * Adjuntar captura de pantalla al reporte
     * Click a GuardarAreaFuncional
     * Refrescar pagina
     * Buscar en Smartlist CajaBusquedaSmartlist el termino Área Funcional 1
     * Click a PrimerElementoDeSmartlist
     * Click a Editar
     * Adjuntar captura de pantalla al reporte
     Entonces Prueba exitosa si elemento Nombre contiene texto Área Funcional 1

  @test
  @organizacion
  @estructura_organizativa
  @areas_funcionales
  @Highest
  @PDS-1270
  Escenario: Editar un área funcional con información básica (PDS-1270)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a AreasFuncionales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/AreasFuncionales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 133
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre | ValorEditado |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarAreaFuncional
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 133
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Nombre contiene texto ValorEditado

  @test
  @organizacion
  @estructura_organizativa
  @areas_funcionales
  @Highest
  @PDS-1274
  Escenario: Eliminar un área funcional con información básica (PDS-1274)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a AreasFuncionales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/AreasFuncionales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 134
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @organizacion
  @estructura_organizativa
  @areas_funcionales
  @Highest
  @PDS-1271
  Escenario: Consultar un área funcional con información básica (PDS-1271)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Click a AreasFuncionales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/AreasFuncionales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 8
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 8                   |
      | NombreRO          | Atención al Cliente |
      | GrupoCoporativoRO | Aseinfo             |

  @test
  @organizacion
  @estructura_organizativa
  @areas_funcionales
  @Highest
  @PDS-1216
  Escenario: Ver el listado de áreas funcionales (PDS-1216)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/AreasFuncionales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @organizacion
  @estructura_organizativa
  @areas_funcionales
  @Highest
  @PDS-1269
  Escenario: Guardar un área funcional con los campos en blanco (PDS-1269)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Catalogo
    * Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/AreasFuncionales.json
    * Click a Nuevo
    * Click a GuardarAreaFuncional
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese el nombre del área funcional

