# language: es

@expedientes
@expedientes_colaboradores
@prestamos
Característica: Prestamos
  Pruebas para entidad Prestamos


  @test
  @Highest
  @PDS-7688
  Escenario: Crear un Préstamo en expedientes con información básica (PDS-7688)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestamos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/pasivo/Prestamos.json
    * Click a Nuevo
    * Esperar que el elemento NombreEntidad este visible
    * Llenar formulario:
      | NombreEntidad | Para Creación Básica |
      | Tipo          | Personal             |
      | MonedaCodigo  | Dólares              |
      | MontoOriginal | 1350.00              |
      | SaldoActual   | 1300.00              |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Para Creación Básica
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEntidad | Para Creación Básica |
      | Tipo          | Personal             |
      | MonedaCodigo  | Dólares              |
      | MontoOriginal | 1350.00              |
      | SaldoActual   | 1300.00              |

  @test
  @Highest
  @PDS-7690
  Escenario: Editar un Préstamo en expedientes con información básica (PDS-7690)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestamos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/pasivo/Prestamos.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Para Editar
    * Esperar que el elemento NombreEntidad este visible
    * Llenar formulario:
      | NombreEntidad | Registro Editado |
      | Tipo          | Personal         |
      | MonedaCodigo  | Dólares          |
      | MontoOriginal | 1500             |
      | SaldoActual   | 1500             |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Nombre de la entidad de valor Registro Editado
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | NombreEntidad | Registro Editado |
      | Tipo          | Personal         |
      | MonedaCodigo  | Dólares          |
      | MontoOriginal | 1500             |
      | SaldoActual   | 1500             |

  @test
  @Highest
  @PDS-7691
  Escenario: Eliminar un préstamo en expedientes (PDS-7691)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestamos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/pasivo/Prestamos.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Nombre de la entidad de valor Para Eliminar
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Préstamo eliminado correctamente

  @test
  @Highest
  @PDS-7684
  Escenario: Consultar un Préstamo en expedientes con información básica (PDS-7684)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestamos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/pasivo/Prestamos.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 1              |
      | NombreEntidadRO | Para Consultar |
      | TipoRO          | Personal       |
      | MonedaRO        | Dólares        |
      | MontoOriginalRO | 350.00         |
      | SaldoActualRO   | 300.00         |

  @test
  @Highest
  @PDS-7693
  Escenario: Ver el listado de Préstamos en expedientes (PDS-7693)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestamos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/pasivo/Prestamos.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7692
  Escenario: Guardar un Préstamo en expedientes con los campos en blanco (PDS-7692)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 100221
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a Prestamos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/pasivo/Prestamos.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El tipo es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto El monto original tiene que ser mayor o igual que 0
    * Prueba exitosa si elemento MensajeError contiene texto El saldo actual tiene que ser mayor o igual que 0
    * Prueba exitosa si elemento MensajeError contiene texto La moneda es requerida