# language: es

@organizacion
@estructura_organizativa
@representantes_legales
Característica: RepresentantesLegales
  Pruebas para entidad RepresentantesLegales

  @test
  @Highest
  @PDS-1583
  Escenario: Ver el listado de representantes legales (PDS-1583)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a RepresentantesLegales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/RepresentantesLegales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1591
  Escenario: Crear un representante legal con información básica (PDS-1591)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a RepresentantesLegales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/RepresentantesLegales.json
    * Click a Nuevo
    * Llenar formulario:
      | Activo          | False               |
      | Compania        | ASEINFO Corporativo |
      | PrimerNombre    | Augusto             |
      | PrimerApellido  | Soto                |
      | FechaNacimiento | 18/7/1967           |
      | EstadoCivil     | Soltero(a)          |
      | Profesion       | Abogado y notario   |
      | Sexo            | Masculino           |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarRepresentanteLegal
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Augusto Soto
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Activo            | False               |
      | Compania          | ASEINFO Corporativo |
      | PrimerNombreRO    | Augusto             |
      | PrimerApellidoRO  | Soto                |
      | FechaNacimientoRO | 18/7/1967           |
      | EstadoCivilRO     | Soltero(a)          |
      | ProfesionRO       | Abogado y notario   |
      | SexoRO            | Masculino           |

  @test
  @Highest
  @PDS-1592
  Escenario: Consultar un representante legal con información básica (PDS-1592)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a RepresentantesLegales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/RepresentantesLegales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino José Antonio Escalante Calderón
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoDetails              | 4                                    |
      | FechaInicioDetails         | 1/1/2021                             |
      | FechaFinDetails            | 31/12/2021                           |
      | ActivoDetails              | Sí                                   |
      | PrimerNombreDetails        | José                                 |
      | SegundoNombreDetails       | Antonio                              |
      | PrimerApellidoDetails      | Escalante                            |
      | SegundoApellidoDetails     | Calderón                             |
      | FechaNacimientoDetails     | 1/1/1980                             |
      | EstadoCivilDetails         | Soltero(a)                           |
      | ProfesionDetails           | Estudiante                           |
      | SexoDetails                | Masculino                            |
      | EmailDetails               | jose.escalante@aseinfo-test.com      |
      | DocIdentNumeroDetails      | 0192839283-5                         |
      | DocIdentTipoDocDetails     | Documento Personal de Identificación |
      | DocIdentNombreEnDocDetails | José Antonio Escalante Calderon      |
      | DocIdentPaisDetails        | Guatemala                            |


  @test
  @Highest
  @PDS-1593
  Escenario: Guardar un representante legal con los campos en blanco (PDS-1593)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a RepresentantesLegales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/RepresentantesLegales.json
    * Click a Nuevo
    * Click a GuardarRepresentanteLegal
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto The FechaNacimiento field is required.

  @test
  @Highest
  @PDS-1594
  Escenario: Editar un representante legal con información básica (PDS-1594)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a RepresentantesLegales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/RepresentantesLegales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Lisa Simpsons de Alroguet
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Activo      | False      |
      | FechaInicio | 01/01/2021 |
      | FechaFin    | 31/12/2021 |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarRepresentanteLegal
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Lisa Simpsons de Alroguet
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Activo            | False                          |
      | FechaInicio       | 1/1/2021                       |
      | FechaFin          | 31/12/2021                     |
      | Compania          | ASEINFO Corporativo            |
      | PrimerNombreRO    | Lisa                           |
      | PrimerApellidoRO  | Simpsons                       |
      | ApellidoCasadaRO  | Alroguet                       |
      | FechaNacimientoRO | 10/3/2014                      |
      | EstadoCivilRO     | Soltero(a)                     |
      | ProfesionRO       | Notaria                        |
      | SexoRO            | Femenino                       |
      | EmailRO           | Lisa.Simpsons@aseinfo-test.com |

  @test
  @Highest
  @PDS-1595
  Escenario: Eliminar un representante legal (PDS-1595)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a RepresentantesLegales
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/RepresentantesLegales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Carlos Antonios Barrera Contreras
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros
