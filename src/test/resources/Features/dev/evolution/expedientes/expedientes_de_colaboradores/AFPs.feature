# language: es

@expedientes
@expedientes_colaboradores
@afps
Característica: AFPs
  Pruebas para entidad AFPS (AFPs)

  @test
  @Highest
  @PDS-1546
  Escenario: Crear un AFPs con información básica (PDS-1546)
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
    * Click a AFPs
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/AFPs.json
    * Click a Nuevo
    * Llenar formulario:
      | Nombre      | Control de calidad |
      | Abreviatura | CCAC               |
      | codigoPais  | gt                 |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Control de calidad
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre          | Control de calidad |
      | Abreviatura     | CCAC               |
      | codigoPais_Text | Guatemala          |

  @test
  @Highest
  @PDS-1549
  Escenario: Editar una Afición con información básica (PDS-1549)
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
    * Click a AFPs
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/AFPs.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Nombre                | Para Editado        |
      | Direccion             | 12-25 z15 villa     |
      | Telefono              | 11                  |
      | Fax                   | 22                  |
      | Contacto              | 33                  |
      | Abreviatura           | PE1549              |
      | codigoPais            | gt                  |
      | CuotaEmpleado         | ValorMinimoAFP      |
      | CuotaPatrono          | ATSRiesgosTitulo    |
      | CuotaPatronal         | ATSFechaNombre      |
      | ValorMinimoCotizacion | ATSRiesgosTitulo    |
      | ValorMaximoCotizacion | AbrevFamiliaAjustes |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Nombre                | Para Editado        |
      | Direccion             | 12-25 z15 villa     |
      | Telefono              | 11                  |
      | Fax                   | 22                  |
      | Contacto              | 33                  |
      | Abreviatura           | PE1549              |
      | codigoPais_Text       | Guatemala           |
      | CuotaEmpleado         | ValorMinimoAFP      |
      | CuotaPatrono          | ATSRiesgosTitulo    |
      | CuotaPatronal         | ATSFechaNombre      |
      | ValorMinimoCotizacion | ATSRiesgosTitulo    |
      | ValorMaximoCotizacion | AbrevFamiliaAjustes |

  @test
  @Highest
  @PDS-1550
  Escenario: Eliminar un AFPs (PDS-1550)
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
    * Click a AFPs
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/AFPs.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Eliminar Basico
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @Highest
  @PDS-1547
  Escenario: Consultar un AFPs con información básica (PDS-1547)
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
    * Click a AFPs
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/AFPs.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Archivo y Campo
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO        | 7                     |
      | NombreRO        | Archivo y Campo       |
      | DireccionRO     | Direccion             |
      | TelefonoRO      | 22224455              |
      | FaxRO           | 22335588              |
      | ContactoRO      |  Prueba               |
      | AbreviaturaRO   | AC8586                |
      | PaisRO          | Guatemala             |
      | CuotaEmpleadoRO | CuotaEmpleadoAFP      |
      | CuotaPatronoRO  | CuotaEmpleadoAFP      |
      | CuotaPatronalRO | ATSControlesTitulo    |
      | ValorMinimoRO   | ATSEmpleadosTitulo    |
      | ValorMaximoRO   | ATSHerramientasTitulo |

  @test
  @Highest
  @PDS-1545
  Escenario: Ver el listado de AFPs (PDS-1545)
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
    * Click a AFPs
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/AFPs.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1548
  Escenario: Guardar un AFPs con los campos en blanco (PDS-1548)
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
    * Click a AFPs
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/AFPs.json
    * Click a Nuevo
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El nombre es requerido
    * Prueba exitosa si elemento Mensaje contiene texto La abreviatura es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El país es requerido