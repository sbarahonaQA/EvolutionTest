# language: es

@expedientes
@expedientes_colaboradores
@Rubros_Salariales
Característica: Rubros Salariales
  Pruebas para entidad Rubros Salariales (Rubros Salariales)

  @test
  @Highest
  @PDS-1627
  Escenario: Crear un Rubros Salariales con información básica (PDS-1627)
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
    * Click a RubrosSalariales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RubrosSalariales.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion     | Impuesto sobre la renta |
      | EsSalarioBase   | True |
      | Compania        | ASEINFO Corporativo |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarRubrosSalariales
    * Esperar 3 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Impuesto sobre la renta
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion     | Impuesto sobre la renta |
      | EsSalarioBase   | True |
      | Compania        | ASEINFO Corporativo |


  @test
  @Highest
  @PDS-1638
  Escenario: Guardar un Rubros Salariales con los campos en blanco (PDS-1638)
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
    * Click a RubrosSalariales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RubrosSalariales.json
    * Click a Nuevo
    * Click a GuardarRubrosSalariales
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

  @test
  @Highest
  @PDS-1640
  Escenario: Editar un Rubros Salariales con información básica(PDS-1640)
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
    * Click a RubrosSalariales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RubrosSalariales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion     | Editado |
      | EsSalarioBase   | True |
      | Compania        | ASEINFO Corporativo |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarRubrosSalariales
    * Esperar 3 segundos
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Descripcion     | Editado |
      | EsSalarioBase   | True |
      | Compania        | ASEINFO Corporativo |

  @test
  @Highest
  @PDS-1639
  Escenario: Eliminar un Rubros Salariales(PDS-1639)
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
    * Click a RubrosSalariales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RubrosSalariales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1628
  Escenario: Consultar un Rubros Salariales con información básica (PDS-1628)
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
    * Click a RubrosSalariales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RubrosSalariales.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Salario
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | DescripcionRO     | Salario |
      | EsSalarioBaseRO   | Sí |
      | CompaniaRO        | ASEINFO Corporativo |

  @test
  @Highest
  @PDS-1626
  Escenario: Ver el listado de RubrosSalariales (PDS-1626)
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
    * Click a RubrosSalariales
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/RubrosSalariales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

