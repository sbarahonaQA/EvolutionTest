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
* Click a Organizacion
* Se cargan elementos de la pagina organizacion/Organizacion.json
* Click a EstructuraOrganizativa
* Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
* Click a Companias
* Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
* Click a Nuevo
* Llenar formulario:
| Nombre           | Compañía para creación |
| Abreviatura      | pds-1558               |
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
  | Abreviatura      | pds-1558               |
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
* Click a Organizacion
* Se cargan elementos de la pagina organizacion/Organizacion.json
* Click a EstructuraOrganizativa
* Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
* Click a Companias
* Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
* Buscar en Smartlist CajaBusquedaSmartlist el termino 19
* Click a PrimerElementoDeSmartlist
* Click a Editar
* Adjuntar captura de pantalla al reporte
* Llenar formulario:
| Nombre | Registro Editado |
| Abreviatura | RE1573 |
| GrupoCorporativo | Aseinfo |
| TipoEmpresa | Industria y Comercio |
| Pais | de |
* Adjuntar captura de pantalla al reporte
* Click a GuardarCompania
* Refrescar pagina
* Buscar en Smartlist CajaBusquedaSmartlist el termino 19
* Click a PrimerElementoDeSmartlist
* Click a Editar
* Adjuntar captura de pantalla al reporte
Entonces Validar informacion:
  | Nombre | Registro Editado |
  | Abreviatura | RE1573 |
  | GrupoCorporativo | Aseinfo |
  | TipoEmpresa | Industria y Comercio |
  | PaisTexto | Alemania |

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


@test
@Highest
@PDS-1580
Escenario: Eliminar una Compañia (PDS-1580)
Dado que carga Evolution
* Se cargan elementos de la pagina Login.json
* Inicio sesion con usuario gerenterrhh
* Se cargan elementos de la pagina inicio/Inicio.json
* Click a Organizacion
* Se cargan elementos de la pagina organizacion/Organizacion.json
* Click a EstructuraOrganizativa
* Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
* Click a Companias
* Se cargan elementos de la pagina organizacion/estructura_organizativa/Companias.json
* Buscar en Smartlist CajaBusquedaSmartlist el termino 18
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

@test
@Highest
@PDS-1551
Escenario: Ver el listado de Compañias (PDS-1551)
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
* Adjuntar captura de pantalla al reporte
Entonces Verificar que esten presentes:
| Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |