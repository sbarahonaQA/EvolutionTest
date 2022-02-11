# language: es

@expedientes
@expedientes_colaboradores
@familiares
Característica: Familiares
  Pruebas para entidad FamiliaresExpedientes


  @test
  @Highest
  @PDS-7833
  Escenario: Crear un familiar del expediente con información básica (PDS-7833)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Familiares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Familiares.json
    * Click a Nuevo
    * Esperar que el elemento Nombre este visible
    * Llenar formulario:
      | Nombre            | Información básica |
      | Parentesco        | Abuelo (a)         |
      | Nacionalidad      | Guatemala          |
      | FechaNacimiento   | 12/05/1986         |
      | Sexo              | Femenino           |
      | EstadoCivil       | Casado(a)          |
      | Ocupacion         | Ninguna            |
      #| TipoDocumento     | NIT (Guatemala)   |
      | Documento         | 4538               |
      | TelefonoMovil     | 54456786           |
      | Estudia           | False              |
      | Depende           | True               |
      | BenefPrestLegales | False              |
      | Trabaja           | False              |
      | Fallecido         | False              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de valor Información básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre            | Información básica |
      | Parentesco        | Abuelo (a)         |
      | Nacionalidad      | Guatemala          |
      | FechaNacimiento   | 12/05/1986         |
      | Sexo              | Femenino           |
      | EstadoCivil       | Casado(a)          |
      | Ocupacion         | Ninguna            |
      #| TipoDocumento     | NIT (Guatemala)   |
      | Documento         | 4538               |
      | TelefonoMovil     | 54456786           |
      | Estudia           | False              |
      | Depende           | True               |
      | BenefPrestLegales | False              |
      | Trabaja           | False              |
      | Fallecido         | False              |

  @test
  @Highest
  @PDS-7834
  Escenario: Editar un familiar del expediente con información básica (PDS-7834)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Familiares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Familiares.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de valor Editar
    * Esperar que el elemento Nombre este visible
    * Llenar formulario:
      | Nombre            | Editado                       |
      | Parentesco        | Abuelo (a)                    |
      | Nacionalidad      | El Salvador                   |
      | FechaNacimiento   | 07/05/1998                    |
      | Sexo              | Femenino                      |
      | EstadoCivil       | Casado(a)                     |
      | Ocupacion         | Ninguna                       |
      #| TipoDocumento    | Afiliación ISSS (El Salvador) |
      | TelefonoMovil     | 45647585                      |
      | Estudia           | False                         |
      | Depende           | True                          |
      | BenefPrestLegales | False                         |
      | Trabaja           | False                         |
      | Fallecido         | False                         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de valor Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre            | Editado                       |
      | Parentesco        | Abuelo (a)                    |
      | Nacionalidad      | El Salvador                   |
      | FechaNacimiento   | 07/05/1998                    |
      | Sexo              | Femenino                      |
      | EstadoCivil       | Casado(a)                     |
      | Ocupacion         | Ninguna                       |
      #| TipoDocumento    | Afiliación ISSS (El Salvador) |
      | TelefonoMovil     | 45647585                      |
      | Estudia           | False                         |
      | Depende           | True                          |
      | BenefPrestLegales | False                         |
      | Trabaja           | False                         |
      | Fallecido         | False                         |

  @test
  @Highest
  @PDS-782
  Escenario: Consultar un familiar del expediente con información básica (PDS-782)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Familiares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Familiares.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO                                 | 13                  |
      | NombreRO                                 | Consulta            |
      | ParentescoRO                             | Cónyuge             |
      | NacionalidadRO                           | Guatemala           |
      | FechaNacimientoRO                        | 20/1/2000           |
      | SexoRO                                   | Femenino            |
      | EstadoCivilRO                            | Casado(a)           |
      | OcupacionRO                              | Empresaria          |
      | NoDocumentoRO                            | 34525               |
      | TipoDocumentoRO                          | Carnet de Residente |
      | TelefonoMovilRO                          | 32523523            |
      | EstudiaRO                                | No                  |
      | DependeRO                                | Sí                  |
      | EsBeneficiarioLegalEnCasoFallecimientoRO | No                  |
      | TrabajaRO                                | No                  |
      | FallecidoRO                              | No                  |


  @test
  @Highest
  @PDS-7836
  Escenario: Ver el listado de familiares en expedientes (PDS-7836)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Familiares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Familiares.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7835
  Escenario: Guardar un familiar del expediente en los campos en blanco (PDS-7835)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a ExpedienteEmpleado
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Familiares
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Familiares.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El parentesco es requerido