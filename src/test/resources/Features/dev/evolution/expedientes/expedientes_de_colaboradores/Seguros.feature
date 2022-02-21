# language: es

@expedientes
@expedientes_colaboradores
@seguros
Característica: Seguros
  Pruebas para entidad Seguros (Seguros)

  @test
  @Highest
  @PDS-1675
  Escenario: Crear un Seguro con información básica (PDS-1675)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Seguros.json
    * Click a Nuevo
    * Llenar formulario:
      | TipoSeguro    | Seguros de Gastos Médicos |
      | Descripcion   | Farmacos recetados        |
      | Abreviatura   | PDS-1675                  |
      | codigoMoneda  | GTQ                       |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Farmacos recetados
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoSeguro       | Seguros de Gastos Médicos |
      | Descripcion      | Farmacos recetados        |
      | Abreviatura      | PDS-1675                  |
      | codigoMonedaText | Quetzales                 |

  @test
  @Highest
  @PDS-1679
  Escenario: Editar un Seguro con información básica (PDS-1679)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Seguros.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | TipoSeguro    | Seguros de Vida |
      | Descripcion   | Editado         |
      | Abreviatura   | ED1679          |
      | RangoInicial  | 1000            |
      | RangoFinal    | 5000            |
      | CuotaSeguro   | 150             |
      | CuotaFamiliar | 25              |
      | Prima         | 75              |
      | Poliza        | PDS-1679        |
      | codigoMoneda  | GTQ             |
      | Certificado   | 2               |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoSeguro       | Seguros de Vida |
      | Descripcion      | Editado         |
      | Abreviatura      | ED1679          |
      | RangoInicial     | 1000            |
      | RangoFinal       | 5000            |
      | CuotaSeguro      | 150             |
      | CuotaFamiliar    | 25              |
      | Prima            | 75              |
      | Poliza           | PDS-1679        |
      | codigoMonedaText | Quetzales       |
      | Certificado      | 2               |

  @test
  @Highest
  @PDS-1680
  Escenario: Eliminar un Seguro (PDS-1680)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Seguros.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Eliminar
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1676
  Escenario: Consultar un Seguro con información básica (PDS-1676)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Seguros.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Consultar
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO             | 12              |
      | TipoDeSeguroRO       | Seguros de Vida |
      | DescripcionRO        | Para Consultar  |
      | AbreviaturaRO        | PC7489          |
      | RangoInicialRO       | 7,000.00        |
      | RangoFinalRO         | 2,500.00        |
      | CuotaSeguroRO        | 250.00          |
      | CuotaFamiliarRO      | 15.00           |
      | PrimaRO              | 10.00           |
      | PolizaRO             | PDS-1676        |
      | MonedaRO             | Dólares         |
      | CertificadoRO        | 5               |
      | AceptaBeneficiarioRO | Sí              |
      | RequierePorcentajeRO | Sí              |

  @test
  @Highest
  @PDS-1674
  Escenario: Ver el listado de Seguros (PDS-1674)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Seguros.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1677
  Escenario: Guardar un Seguro con los campos en blanco (PDS-1677)
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
    * Click a Seguros
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Seguros.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida