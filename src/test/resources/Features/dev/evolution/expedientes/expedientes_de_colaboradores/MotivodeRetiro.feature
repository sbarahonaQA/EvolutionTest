# language: es

@expedientes
@expedientes_colaboradores
@MotivodeRetiro
Característica: MotivosRetiro
  Pruebas para entidad MotivosRetiro (Motivos de retiro)

  @test
  @Highest
  @PDS-1647
  Escenario: Crear un Motivo de retiro con información básica (PDS-1647)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a MotivodeRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/MotivodeRetiro.json
    * Click a Nuevo
    * Llenar formulario:
      | Compania   | ASEINFO Corporativo |
      | Formulario | Encuesta de retiro |
    * Click a agregarFormulario
    * Llenar formulario:
      | Nombre                | Creacion Basica |
      | PuedeEditarParams     | True |
      | PermiteRecontratacion | True |
      | codigoCategoria       | Despido |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarMotivoRetiro
    * Esperar 4 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre                | Creacion Basica |
      | PuedeEditarParams     | True |
      | PermiteRecontratacion | True |
      | codigoCategoria       | Despido |


  @test
  @Highest
  @PDS-1649
  Escenario: Guardar un Motivo de retiro con los campos en blanco (PDS-1649)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a MotivodeRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/MotivodeRetiro.json
    * Click a Nuevo
    * Click a GuardarMotivoRetiro
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El nombre es requerido
    * Prueba exitosa si elemento MensajeError contiene texto La categoría es requerida

  @test
  @Highest
  @PDS-1650
  Escenario: Editar un Motivo de retiro con información básica(PDS-1650)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a MotivodeRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/MotivodeRetiro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre                | Prueba Editada |
      | PuedeEditarParams     | True |
      | PermiteRecontratacion | True |
      | codigoCategoria       | Renuncia |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarMotivoRetiro
    * Esperar 3 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Editada
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre                | Prueba Editada |
      | PuedeEditarParams     | True |
      | PermiteRecontratacion | True |
      | codigoCategoria       | Renuncia |

  @test
  @Highest
  @PDS-1651
  Escenario: Eliminar un Motivo de Retiro(PDS-1651)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a MotivodeRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/MotivodeRetiro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Carlo
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1648
  Escenario: Consultar un motivo de retiro con información básica (PDS-1648)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a MotivodeRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/MotivodeRetiro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Despido Injustificado
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO            | 2                     |
      | NombreRO            | Despido Injustificado |
      | PuedeEditarParamsRO | Sí                    |
      | Categoria           | Renuncia              |

  @test
  @Highest
  @PDS-1646
  Escenario: Ver el listado de Motivo de Retiro (PDS-1646)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a MotivodeRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/MotivodeRetiro.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

