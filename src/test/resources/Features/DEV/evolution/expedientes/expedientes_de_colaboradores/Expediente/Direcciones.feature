# language: es

@expedientes
@expedientes_colaboradores
@direcciones
Característica: Direcciones
  Pruebas para entidad DireccionesExpedientes


  @test
  @Highest
  @PDS-7785
  Escenario: Crear una dirección de expedientes con información básica (PDS-7785)
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
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Direcciones.json
    * Click a Nuevo
    * Esperar que el elemento Direccion este visible
    * Llenar formulario:
      | Direccion     | Guatemala, Guatemala |
      | TipoPropiedad | Alquilada            |
      | Pais          | Guatemala            |
      | Departamento  | SACATEPEQUEZ         |
      | Municipio     | ANTIGUA GUATEMALA    |
      | Barrio        | Antigua Guatemala    |
      | CodigoPostal  | 01070	             |
      | Telefono      | 3454647              |
      | TipoDireccion | Descanso             |
      | Observacion   | Creación             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Dirección de valor Guatemala, Guatemala
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Direccion     | Guatemala, Guatemala |
      | TipoPropiedad | Alquilada            |
      | Pais          | Guatemala            |
      | Departamento  | SACATEPEQUEZ         |
      | Municipio     | ANTIGUA GUATEMALA    |
      | Barrio        | Antigua Guatemala    |
      | CodigoPostal  | 01070	             |
      | Telefono      | 3454647              |
      | TipoDireccion | Descanso             |
      | Observacion   | Creación             |

  @test
  @Highest
  @PDS-7789
  Escenario: Editar Tarjetas de crédito con información básica (PDS-7789)
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
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Direcciones.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Dirección de valor Editar
    * Esperar que el elemento Direccion este visible
    * Llenar formulario:
      | Direccion     | Editado   |
      | TipoPropiedad | Otro      |
      | Pais          | Guatemala |
      | Departamento  | GUATEMALA |
      | Municipio     | AMATITLÁN |
      | Barrio        | Barrio    |
      | CodigoPostal  | 01070	  |
      | Telefono      | 3454647   |
      | TipoDireccion | Trabajo   |
      | Observacion   | EDITADO   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Dirección de valor Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Direccion     | Editado   |
      | TipoPropiedad | Otro      |
      | Pais          | Guatemala |
      | Departamento  | GUATEMALA |
      | Municipio     | AMATITLÁN |
      | Barrio        | Barrio    |
      | CodigoPostal  | 01070	  |
      | Telefono      | 3454647   |
      | TipoDireccion | Trabajo   |
      | Observacion   | EDITADO   |

  @test
  @Highest
  @PDS-7790
  Escenario: Eliminar una dirección de expedientes (PDS-7790)
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
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Direcciones.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Dirección de valor Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La dirección ha sido eliminada correctamente

  @test
  @Highest
  @PDS-7782
  Escenario: Consultar una dirección de expedientes con información básica (PDS-7782)
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
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Direcciones.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 4             |
      | DireccionRO     | Consulta       |
      | TipoPropiedadRO | Alquilada  |
      | PaisRO          | Costa Rica        |
      | DepartamentoRO  | ALAJUELA        |
      | MunicipioRO     | ALAJUELA   |
      | BarrioRO        | Barrio Costa     |
      | CodigoPostalRO  | 01070              |
      | TelefonoRO      | 6756858       |
      | TipoDireccionRO | Residencia  |
      | ObservacionRO   | Consulta        |



  @test
  @Highest
  @PDS-7792
  Escenario: Ver el listado de direcciones de expedientes (PDS-7792)
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
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Direcciones.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla |


  @test
  @Highest
  @PDS-7791
  Escenario: Guardar una dirección de expedientes con los campos en blanco (PDS-7791)
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
    * Click a General
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/Direcciones.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto La dirección es requerida
