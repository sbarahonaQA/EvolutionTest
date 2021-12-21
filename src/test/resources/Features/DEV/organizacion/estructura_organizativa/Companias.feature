# language: es

@organizacion
@estructura_organizativa
@companias
Característica: Companias
Pruebas para entidad Companias

    @test
    @Highest
    @PDS-1558
    Escenario: Crear una compañia con información básica (PDS-1558)
    Dado que carga Evolution
      * Se cargan elementos de la pagina Login.json
      * Inicio sesion con usuario gerenterrhh
      * Se cargan elementos de la pagina inicio/Inicio.json
      * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
      * Click a Organizacion
      * Se cargan elementos de la pagina organizacion/Organizacion.json
      * Click a EstructuraOrganizativa
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
      * Click a Companias
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
      * Click a Nuevo
      * Llenar formulario:
        | Nombre           | Compañía para creación |
        | Abreviatura      | PDS-1558               |
        | GrupoCorporativo | Aseinfo                |
        | TipoEmpresa      | Banca y Finanzas       |
        | Pais             | gt                     |
      * Adjuntar captura de pantalla al reporte
      * Click a GuardarCompania
      * Refrescar pagina
      * Buscar en Smartlist CajaBusquedaSmartlist el termino Compañía para creación
      * Click a PrimerElementoDeSmartlist
      * Click a Editar
      * Adjuntar captura de pantalla al reporte
      Entonces Validar informacion:
        | Nombre           | Compañía para creación |
        | Abreviatura      | PDS-1558               |
        | GrupoCorporativo | Aseinfo                |
        | TipoEmpresa      | Banca y Finanzas       |
        | PaisTexto        | Guatemala              |

    @test
    @Highest
    @PDS-1573
    Escenario: Editar una compañia con información básicaa (PDS-1573)
    Dado que carga Evolution
      * Se cargan elementos de la pagina Login.json
      * Inicio sesion con usuario gerenterrhh
      * Se cargan elementos de la pagina inicio/Inicio.json
      * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
      * Click a Organizacion
      * Se cargan elementos de la pagina organizacion/Organizacion.json
      * Click a EstructuraOrganizativa
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
      * Click a Companias
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
      * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
      * Click a PrimerElementoDeSmartlist
      * Click a Editar
      * Adjuntar captura de pantalla al reporte
      * Llenar formulario:
        | Nombre           | Compañia de Edicion |
        | Abreviatura      | CE                  |
        | GrupoCorporativo | Aseinfo             |
        | TipoEmpresa      | ONG                 |
        | Pais             | de                  |
        | Registro         | 123                 |
        | Direccion        | 456                 |
        | Telefonos        | 789                 |
        | Fax              | 111                 |
        | NIT              | 222                 |
        | NumeroPatronal   | 333                 |
        | InicioFiscal     | 444                 |
        | DireccionWeb     | edicion@web.com     |
        | Mision           | Misión              |
        | Vision           | Visión              |
        | Giro             | Giro                |
      * Adjuntar captura de pantalla al reporte
      * Click a GuardarCompania
      * Refrescar pagina
      * Buscar en Smartlist CajaBusquedaSmartlist el termino Compañia de Edicion
      * Click a PrimerElementoDeSmartlist
      * Click a Editar
      * Adjuntar captura de pantalla al reporte
      Entonces Validar informacion:
        | Nombre           | Compañia de Edicion |
        | Abreviatura      | CE                  |
        | GrupoCorporativo | Aseinfo             |
        | TipoEmpresa      | ONG                 |
        | PaisTexto        | Alemania            |
        | Registro         | 123                 |
        | Direccion        | 456                 |
        | Telefonos        | 789                 |
        | Fax              | 111                 |
        | NIT              | 222                 |
        | NumeroPatronal   | 333                 |
        | InicioFiscal     | 444                 |
        | DireccionWeb     | edicion@web.com     |
        | Mision           | Misión              |
        | Vision           | Visión              |
        | Giro             | Giro                |

    @test
    @Highest
    @PDS-1571
    Escenario: Consultar una Compañia con información básica (PDS-1571)
    Dado que carga Evolution
      * Se cargan elementos de la pagina Login.json
      * Inicio sesion con usuario auditoria
      * Se cargan elementos de la pagina inicio/Inicio.json
      * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
      * Click a Organizacion
      * Se cargan elementos de la pagina organizacion/Organizacion.json
      * Click a EstructuraOrganizativa
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
      * Click a Companias
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
      * Buscar en Smartlist CajaBusquedaSmartlist el termino Para consulta de archivos y adicional
      * Click a PrimerElementoDeSmartlist
      * Click a Detalles
      * Adjuntar captura de pantalla al reporte
      Entonces Validar informacion:
        | CodigoRO           | 16                                    |
        | NombreRO           | Para consulta de archivos y adicional |
        | AbreviaturaRO      | PDS55095508                           |
        | GrupoCorporativoRO | Aseinfo                               |
        | TipoEmpresaRO      | Servicios                             |
        | PaisTextoRO        | Colombia                              |
        | RegistroRO         | REG1                                  |
        | DireccionRO        | Zona 5                                |
        | TelefonosRO        | 1234-1234                             |
        | FaxRO              | 4567-4567                             |
        | NITRO              | 12345678                              |
        | NumeroPatronalRO   | 5                                     |
        | InicioFiscalRO     | 1                                     |
        | DireccionWebRO     | paraconsulta@web.com                  |
        | MisionRO           | Mision                                |
        | VisionRO           | Visión                                |
        | GiroRO             | Giro                                  |

    @test
    @Highest
    @PDS-1580
    Escenario: Eliminar una Compañia (PDS-1580)
    Dado que carga Evolution
      * Se cargan elementos de la pagina Login.json
      * Inicio sesion con usuario gerenterrhh
      * Se cargan elementos de la pagina inicio/Inicio.json
      * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
      * Click a Organizacion
      * Se cargan elementos de la pagina organizacion/Organizacion.json
      * Click a EstructuraOrganizativa
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
      * Click a Companias
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
      * Buscar en Smartlist CajaBusquedaSmartlist el termino A Eliminar
      * Click a PrimerElementoDeSmartlist
      * Click a Eliminar
      * Aceptar alerta
      * Refrescar pagina
      Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

    @test
    @Highest
    @PDS-1383
    Escenario: Guardar una compañia con los campos en blanco(PDS-1572)
    Dado que carga Evolution
      * Se cargan elementos de la pagina Login.json
      * Inicio sesion con usuario planillascorp
      * Se cargan elementos de la pagina inicio/Inicio.json
      * Click a Organizacion
      * Se cargan elementos de la pagina organizacion/Organizacion.json
      * Click a EstructuraOrganizativa
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
      * Click a Companias
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
      * Click a Nuevo
      * Click a GuardarCompania
      * Adjuntar captura de pantalla al reporte
      * Esperar que el elemento Mensaje este visible
      Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese el nombre de la empresa
      * Prueba exitosa si elemento Mensaje contiene texto Ingrese al menos 3 caracteres
      * Prueba exitosa si elemento Mensaje contiene texto Favor seleccione el país al que pertenece la empresa

  @test
    @Highest
    @PDS-1551
    Escenario: Ver el listado de Compañias (PDS-1551)
    Dado que carga Evolution
      * Se cargan elementos de la pagina Login.json
      * Inicio sesion con usuario planillascorp
      * Se cargan elementos de la pagina inicio/Inicio.json
      * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
      * Click a Organizacion
      * Se cargan elementos de la pagina organizacion/Organizacion.json
      * Click a EstructuraOrganizativa
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
      * Click a Companias
      * Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
      * Adjuntar captura de pantalla al reporte
      Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |