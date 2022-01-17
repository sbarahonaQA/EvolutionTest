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
      | Abreviatura   | DRRS                      |
      | RangoInicial  | 1                         |
      | RangoFinal    | 1                         |
      | CuotaSeguro   | 1                         |
      | CuotaFamiliar | 1                         |
      | Prima         | 1                         |
      | Poliza        | 1                         |
      | codigoMoneda  | GTQ                       |
      | Certificado   | 1                         |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Farmacos recetados
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | TipoSeguro       | Seguros de Gastos Médicos |
      | Descripcion      | Farmacos recetados        |
      | Abreviatura      | DRRS                      |
      | RangoInicial     | 1                         |
      | RangoFinal       | 1                         |
      | CuotaSeguro      | 1                         |
      | CuotaFamiliar    | 1                         |
      | Prima            | 1                         |
      | Poliza           | 1                         |
      | codigoMonedaText | Quetzales                 |
      | Certificado      | 1                         |

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
      | TipoSeguro   | Seguros de Vida |
      | Descripcion  | Editado         |
      | Abreviatura  | ED1679          |
      | codigoMoneda | GTQ             |
      | Certificado  | 2               |
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Seguro de Vida Categoria I
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO       | 1                          |
      | TipoDeSeguroRO | Seguros de Vida            |
      | DescripcionRO  | Seguro de Vida Categoria I |
      | AbreviaturaRO  | N/A                        |
      | MonedaRO       | Dólares                    |

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