# language: es

@expedientes
@expedientes_colaboradores
@emergencias
Característica: Emergencias
  Pruebas para entidad EmergenciasExpedientes

  @test
  @Highest
  @PDS-7817
  Escenario: Crear un contacto de emergencia con información básica (PDS-7817)
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
    * Click a Emergencias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Emergencias.json
    * Click a Nuevo
    * Esperar que el elemento Secuencial este visible
    * Llenar formulario:
      | Secuencial      | 4               |
      | Nombre          | Creación Básica |
      | Parentesco      | Amigo           |
      | Direccion       | Guatemala       |
      | Telefono        | 2214557         |
      | Trabajo         | Cemaco          |
      | TelefonoTrabajo | 22334455        |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de valor Creación Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Secuencial      | 4               |
      | Nombre          | Creación Básica |
      | Parentesco      | Amigo           |
      | Direccion       | Guatemala       |
      | Telefono        | 2214557         |
      | Trabajo         | Cemaco          |
      | TelefonoTrabajo | 22334455        |

  @test
  @Highest
  @PDS-7819
  Escenario: Editar un contacto de emergencia con información básica (PDS-7819)
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
    * Click a Emergencias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Emergencias.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de valor Editar
    * Esperar que el elemento Secuencial este visible
    * Llenar formulario:
      | Secuencial      | 6             |
      | Nombre          | Editado       |
      | Parentesco      | Amigo         |
      | Direccion       | Editado       |
      | Telefono        | 82820         |
      | Trabajo         | Ferreteria AC |
      | TelefonoTrabajo | 22334422      |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de valor Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Secuencial      | 6             |
      | Nombre          | Editado       |
      | Parentesco      | Amigo         |
      | Direccion       | Editado       |
      | Telefono        | 82820         |
      | Trabajo         | Ferreteria AC |
      | TelefonoTrabajo | 22334422      |

  @test
  @Highest
  @PDS-7820
  Escenario: Eliminar un contacto de emergencias (PDS-7820)
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
    * Click a Emergencias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Emergencias.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Nombre de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Contacto de emergencia del expediente eliminado correctamente


  @test
  @Highest
  @PDS-7812
  Escenario: Consultar un contacto de emergencia con información básica (PDS-7812)
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
    * Click a Emergencias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Emergencias.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 5          |
      | SecuencialRO      | 1          |
      | NombreRO          | Consulta   |
      | ParentescoRO      | Hermano(a) |
      | DireccionRO       | Consulta   |
      | TelefonoRO        | 222222     |
      | LugarTrabajoRO    | ASEINFO    |
      | TelefonoTrabajoRO | 4455       |



  @test
  @Highest
  @PDS-7822
  Escenario: Ver el listado de contactos de emergencias (PDS-7822)
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
    * Click a Emergencias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Emergencias.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |

  @test
  @Highest
  @PDS-7821
  Escenario: Guardar un contacto de emergenciacon los campos en blanco (PDS-7821)
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
    * Click a Emergencias
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Emergencias.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El número secuencial debe de ser mayor que 0
    * Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La dirección es requerida
    * Prueba exitosa si elemento MensajeError contiene texto El teléfono es requerido

