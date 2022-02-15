# language: es

@expedientes
@expedientes_colaboradores
@general
Característica: General
  Pruebas para entidad GeneralExpedientesca


  @test
  @Highest
  @PDS-7719
  Escenario: Editar Tarjetas de crédito con información básica (PDS-7719)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba, Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/General.json
    * Esperar que el elemento PrimerNombre este visible
    * Llenar formulario:
      | PrimerNombre    | Editado              |
      | SegundoNombre   | Editable	           |
      | PrimerApellido  | Editado              |
      | SegundoApellido | Editable	           |
      | ApellidoCasada  | Prueba               |
      | OtrosNombre     | False                |
      | NombreUsual     | Editado              |
      | Sexo            | Femenino             |
      | EstadoCivil     | Viudo(a)             |
      | Profesion       | Ingeniero Industrial |
      | Nacionalidad    | El Salvador          |
      | FechaNacimiento | 17/8/2001            |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Esperar que el elemento PrimerNombre este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | PrimerNombre    | Editado              |
      | SegundoNombre   | Editable	           |
      | PrimerApellido  | Editado              |
      | SegundoApellido | Editable	           |
      | ApellidoCasada  | Prueba               |
      | OtrosNombre     | False                |
      | NombreUsual     | Editado              |
      | Sexo            | Femenino             |
      | EstadoCivil     | Viudo(a)             |
      | Profesion       | Ingeniero Industrial |
      | Nacionalidad    | El Salvador          |
      | FechaNacimiento | 17/8/2001            |



  @test
  @Highest
  @PDS-7840
  Escenario: Consultar información general de expediente con información básica (PDS-7840)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino prueba3 Prueba3 de Test, Lucia Daniela
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/General.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TituloPersonalRO  | Señora                           |
      | PrimerNombreRO    | Lucia                            |
      | SegundoNombreRO   | Daniela                          |
      | PrimerApellidoRO  | prueba3                          |
      | SegundoApellidoRO | Prueba3                          |
      | ApellidoCasadaRO  | Test                             |
      | OtrosNombresRO    | Test                             |
      | NombreUsualRO     | Test                             |
      | Sexo              | Femenino                         |
      | EdadRO            | 20 Años                          |
      | EstadoCivilRO     | Soltero(a)                       |
      | ProfesionRO       | INGENIERO ELECTRICISTA           |
      | NacionalidadRO    | Guatemala                        |
      | FechaNacimientoRO | 16/8/2001                        |
      | EmailRO           | prueba3.prueba3@aseinfo-test.com |
      | EmailInternoRO    | prueba3.prueba3@aseinfo-test.com |
      | MovilRO           | 22223344                         |
      | MovilInternoRO    | 22334455                         |
      | PaisRO            | Guatemala                        |
      | DepartamentoRO    | JALAPA                           |
      | MunicipioRO       | MONJAS                           |




  @test
  @Highest
  @PDS-7848
  Escenario: Guardar información general de expediente con los campos en blanco (PDS-7848)
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
    * Click a Nuevo
    * Click a Continuar
    * Click a GuardarExpediente
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El primer apellido es requerido
    * Prueba exitosa si elemento Mensaje contiene texto El primer nombre es requerido
    * Prueba exitosa si elemento Mensaje contiene texto La profesión es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El sexo es requerido