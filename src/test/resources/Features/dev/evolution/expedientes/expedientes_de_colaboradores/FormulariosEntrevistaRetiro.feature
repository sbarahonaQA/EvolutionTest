# language: es

@expedientes
@expedientes_colaboradores
@formulariosentrevistaretiro
Característica: FormulariosEntrevistaRetiro
  Pruebas para entidad FormulariosEntrevistaRetiro (Formularios Para Entrevista De Retiro)

  @test
  @Highest
  @PDS-7899
  Escenario: Crear Formulario de Entrevista de Retiro con información básica (PDS-7899)
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
    * Click a FormulariosEntrevistaRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormulariosEntrevistaRetiro.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre         | Para Basico PDS-7899  |
      | Descripcion    | Para Editado PDS-7899 |
      | LlenadoAnonimo | False                 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Aceptar alerta
    * Esperar que el elemento CajaBusquedaSmartlist este presente
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Basico PDS-7899
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre         | Para Basico PDS-7899  |
      | Descripcion    | Para Editado PDS-7899 |
      | LlenadoAnonimo | False                 |

  @test
  @Highest
  @PDS-7901
  Escenario: Editar Formulario de Entrevista de Retiro con información básica (PDS-7901)
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
    * Click a FormulariosEntrevistaRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormulariosEntrevistaRetiro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar PDS-7013
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre         | Para Editado PDS-7013 |
      | Descripcion    | Para Editado PDS-7013 |
      | LlenadoAnonimo | True                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Aceptar alerta
    * Esperar que el elemento CajaBusquedaSmartlist este presente
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editado PDS-7013
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre         | Para Editado PDS-7013 |
      | Descripcion    | Para Editado PDS-7013 |
      | LlenadoAnonimo | True                  |

  @test
  @Highest
  @PDS-7902
  Escenario: Eliminar Formulario de Entrevista de Retiro (PDS-7902)
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
    * Click a FormulariosEntrevistaRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormulariosEntrevistaRetiro.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar pds-7902
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-7898
  Escenario: Consultar Formulario de Entrevista de Retiro con información básica (PDS-7898)
# No se puede hacer una consulta para Formularios de Entrevista de Retiro ya que no existe la opción de solo ver los detalles de un registro

  @test
  @Highest
  @PDS-7908
  Escenario: Ver el listado de Formulario de Entrevista de Retiro (PDS-7908)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario gerenterrhh
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Catalogo
    * Click a FormulariosEntrevistaRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormulariosEntrevistaRetiro.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-7906
  Escenario: Guardar Formulario de Entrevista de Retiro con los campos en blanco (PDS-7906)
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
    * Click a FormulariosEntrevistaRetiro
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/FormulariosEntrevistaRetiro.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El nombre es requerido