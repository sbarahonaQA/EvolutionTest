# language: es

@evowave
@generales
Característica: Generales
  Pruebas generales de EvolutionWave

  @test
  @Highest
  @PDS-4331
  Escenario: Iniciar sesion con usuario activo (PDS-4331)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    Entonces Esperar que el elemento Perfil este visible

  @test
  @Highest
  @PDS-4333
  Escenario: Cerrar sesion (PDS-4333)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    * Esperar que el elemento Perfil este visible
    * Click a Perfil
    * Se cargan elementos de la pagina dev/evowave/general/Perfil.json
    * Esperar que el elemento EtiquetaMiPerfil este presente
    * Click a CerrarSesion
    * Se cargan elementos de la pagina dev/evowave/Login.json
    Entonces Esperar que el elemento Ingresar este visible

  @test
  @Highest
  @PDS-4334
  Escenario: Datos perfil (1 empleo) (PDS-4334)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    * Esperar que el elemento Perfil este visible
    * Click a Perfil
    * Se cargan elementos de la pagina dev/evowave/general/Perfil.json
    * Esperar que el elemento EtiquetaMiPerfil este presente
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre        | Walter Alfredo Cordova          |
      | Correo        | walter.cordova@aseinfo-test.com |
      | Plaza         | Jefe de Compensaciones	        |
      | Unidad        | Recursos Humanos                |
      | Empresa       | ASEINFO Corporativo             |
      | CentroTrabajo | Oficinas Centrales              |

  @test
  @Highest
  @PDS-4335
  Escenario: Datos perfil (2 empleos) (PDS-4335)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    * Esperar que el elemento Perfil este visible
    * Click a Perfil
    * Se cargan elementos de la pagina dev/evowave/general/Perfil.json
    * Esperar que el elemento EtiquetaMiPerfil este presente
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre        | Walter Alfredo Cordova          |
      | Correo        | walter.cordova@aseinfo-test.com |
      | Plaza         | Jefe de Compensaciones	        |
      | Unidad        | Recursos Humanos                |
      | Empresa       | ASEINFO Corporativo             |
      | CentroTrabajo | Oficinas Centrales              |
    Entonces Validar informacion:
      | Nombre           | Walter Alfredo Cordova          |
      | Correo           | walter.cordova@aseinfo-test.com |
      | 2daPlaza         | Jefe de Atención al cliente     |
      | 2daUnidad        | Atención al cliente             |
      | 2daEmpresa       | ASEINFO Corporativo             |
      | 2doCentroTrabajo | Oficinas Centrales              |

  @test
  @Highest
  @PDS-4337
  Escenario: Cambiar empleo (PDS-4337)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario soporteit
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento CirculoCarga deje de estar visible
    * Esperar que el elemento Perfil este visible
    * Click a Perfil
    * Se cargan elementos de la pagina dev/evowave/general/Perfil.json
    * Esperar que el elemento EtiquetaMiPerfil este presente
    * Click a Seleccionar2doEmpleo
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Click a Consultas
    * Se cargan elementos de la pagina dev/evowave/consultas/Consultas.json
    * Click a Vacaciones
    * Se cargan elementos de la pagina dev/evowave/consultas/vacaciones/Vacaciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | PeriodosVacacion | No hay vacaciones para mostrar. |
    * Click a VerMisDiasDeVacaciones
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | MisDiasDeVacaciones | No hay vacaciones para mostrar. |
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Click a Consultas
    * Se cargan elementos de la pagina dev/evowave/consultas/Consultas.json
    * Click a ReciboSalario
    * Se cargan elementos de la pagina dev/evowave/consultas/recibo_salario/ReciboSalario.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | MisReciboDeSalario | No hay recibos para mostrar. |
    * Click a RecibosUltimos6Meses
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | MisReciboDeSalario | No hay recibos para mostrar. |
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Click a Consultas
    * Se cargan elementos de la pagina dev/evowave/consultas/Consultas.json
    * Esperar que el elemento Incapacidades este presente
    * Click a Incapacidades
    * Se cargan elementos de la pagina dev/evowave/consultas/incapacidades/Incapacidades.json
    * Llenar formulario:
      | Desde | 01/01/2020 |
      | Hasta | 31/01/2020 |
    * Click a Consultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | MisIncapacidades | No hay incapacidades para mostrar. |
    #* Se cargan elementos de la pagina dev/evowave/Inicio.json
    #* Click a Consultas
    #* Se cargan elementos de la pagina dev/evowave/consultas/Consultas.json
    #* Click a Eventos
    #* Se cargan elementos de la pagina dev/evowave/consultas/eventos/Eventos.json
    #* Adjuntar captura de pantalla al reporte
    #Entonces Validar informacion:
     # | MisEventos | No hay eventos para mostrar. |
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Click a Consultas
    * Se cargan elementos de la pagina dev/evowave/consultas/Consultas.json
    * Click a MisMarcaciones
    * Se cargan elementos de la pagina dev/evowave/consultas/mis_marcaciones/MisMarcaciones.json
    * Click a Consultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Marcaciones | No hay marcaciones por mostrar. |
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Click a Solicitudes
    * Se cargan elementos de la pagina dev/evowave/solicitudes/Solicitudes.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TotalSolicitudes | 1 – 5 of 21 |
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Click a Autorizaciones
    * Se cargan elementos de la pagina dev/evowave/autorizaciones/Autorizaciones.json
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TotalAutorizaciones | 1 – 5 of 46 |