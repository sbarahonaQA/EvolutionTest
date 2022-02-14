# language: es

@organizacion
@estructura_organizativa
@modificaciones_tabulador_salarial
Característica: ModificacionesTabuladorSalarial
  Pruebas para entidad ModificacionesTabuladorSalarial (Modificación al Tabulador Salarial)

  @test
  @Highest
  @PDS-1681
  Escenario: Crear una modificación al tabulador salarial con información básica (PDS-1681)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Click a Nuevo
    * Llenar formulario:
      | AplicarA                  | False               |
      | codigoCompania            | ASEINFO Corporativo |
      | FechaVigencia             | 2/2/2021            |
      | codigoAlternativoSolicita | 100003              |
      | TipoEscala                | Salario mensual     |
      | SalarioMinimo             | 8500                |
      | SalarioMaximo             | 12000               |
      | PorcentajeIncrementar     | 10                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Agregar
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Carlos Benjamin Carbajal Venero
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | AplicarA                       | False                            |
      | codigoCompania                 | ASEINFO Corporativo              |
      | FechaVigencia                  | 2/2/2021                         |
      | codigoAlternativoSolicitaTexto | Carbajal Venero, Carlos Benjamin |
      | SalarioMinimoTbl               | 8500                             |
      | SalarioMaximoTbl               | 12000                            |
      | PorcentajeIncrementalTbl       | 10                               |

  @test
  @Highest
  @PDS-1685
  Escenario: Editar una modificación al tabulador salarial con información básica (PDS-1685)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Walter Alfredo Cordova
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Llenar formulario:
      | AplicarA | True |
    * Esperar que el elemento codigoPais este presente
    * Llenar formulario:
      | codigoPais                | gt       |
      | FechaVigencia             | 2/3/2021 |
      | codigoAlternativoSolicita | 100009   |
      | SalarioMinimoTbl          | 18500    |
      | SalarioMaximoTbl          | 22000    |
      | PorcentajeIncrementalTbl  | 15       |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Oscar Alfredo Chacón
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | AplicarA                       | True                  |
      | codigoPaisTexto                | Guatemala             |
      | FechaVigencia                  | 2/3/2021              |
      | codigoAlternativoSolicitaTexto | Chacón, Oscar Alfredo |
      | TipoEscalaTbl                  | Salario mensual	   |
      | SalarioMinimoTbl               | 18500                 |
      | SalarioMaximoTbl               | 22000                 |
      | PorcentajeIncrementalTbl       | 15                    |


  @test
  @Highest
  @PDS-1687
  Escenario: Eliminar una modificación al tabulador salarial (PDS-1687)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Ana María Penado Guzmán
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1683
  Escenario: Consultar una modificación al tabulador salarial con información básica (PDS-1683)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Doris Deysi Gonzalez Garcia
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 1                                     |
      | AplicarA        | False                                 |
      | CompaniaRO      | ASEINFO Corporativo                   |
      | FechaVigenciaRO | 1/8/2020 00:00                        |
      | SolicitanteRO   | 200001 - Gonzalez Garcia, Doris Deysi |

  @test
  @Highest
  @PDS-1678
  Escenario: Ver el listado de modificación al tabulador Salarial (PDS-1678)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1684
  Escenario: Guardar una modificación al tabulador salarial con los campos en blanco (PDS-1684)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto The FechaVigencia field is required.

  @test
  @Highest
  @PDS-6452
  Escenario: Guardar y procesar una una modificación al tabulador salarial con información básica (PDS-6452)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a ModificacionTabuladorSalarial
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/ModificacionTabuladorSalarial.json
    * Click a Nuevo
    * Llenar formulario:
      | AplicarA                  | False               |
      | codigoCompania            | ASEINFO Corporativo |
      | FechaVigencia             | 2/5/2021            |
      | codigoAlternativoSolicita | 100006              |
      | TipoEscala                | Salario mensual     |
      | SalarioMinimo             | 7500.0000           |
      | SalarioMaximo             | 10000.0000          |
      | PorcentajeIncrementar     | 10                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Agregar
    * Click a GuardaryProcesar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Osmín Roberto Rodezno García
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | AplicarA        | False                                  |
      | CompaniaRO      | ASEINFO Corporativo                    |
      | FechaVigenciaRO | 2/5/2021 00:00                         |
      | SolicitanteRO   | 100006 - Rodezno García, Osmín Roberto |
      | TipoEscalaRO    | Salario mensual	                     |
      | SalarioMinRO    | 7,500.00                               |
      | SalarioMaxRO    | 10,000.00                              |
      | PorcentajeRO    | 10.00                                  |