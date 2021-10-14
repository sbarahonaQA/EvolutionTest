# language: es

@example
Característica: NivelesComportamiento
  Pruebas para entidad Niveles de Comportamiento

  @test
  @organizacion
  @estructura_organizativa
  @Niveles_de_Comportamiento
  @Highest
  @PDS-1632
  Escenario: Crear un nivel de comportamiento con información básica (PDS-1632)
    Dado que carga Evolution
    Entonces Se cargan elementos de la pagina Login.json
    Cuando Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Click a Nuevo
    * Llenar formulario:
      | Descripcion | Creacion Basica |
      | Abreviatura | CB              |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarNivelComportamiento
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Creacion Basica
    * Refrescar pagina
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Creacion Basica

  @test
  @organizacion
  @estructura_organizativa
  @Niveles_de_Comportamiento
  @Highest
  @PDS-1635
  Escenario: Editar un nivel de comportamiento con información básica (PDS-1635)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 8
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | Descripcion | Creacion Basica Editada  |
      | Abreviatura | CBE                      |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarNivelComportamiento
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 8
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Descripcion contiene texto Creacion Basica Editada

  @test
  @organizacion
  @estructura_organizativa
  @Niveles_de_Comportamiento
  @Highest
  @PDS-1636
  Escenario: Eliminar un nivel de comportamiento (PDS-1636)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 9
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    * Refrescar pagina
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  @organizacion
  @estructura_organizativa
  @Niveles_de_Comportamiento
  @Highest
  @PDS-1633
  Escenario: Consultar un nivel de comportamiento con información básica (PDS-1633)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 7
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 7                             |
      | DescripcionRO     | Consultar Archivo y Adicional |
      | AbreviaturaRO     | CAA                           |
      | GrupoCoporativoRO | Aseinfo                       |

  @test
  @organizacion
  @estructura_organizativa
  @Niveles_de_Comportamiento
  @Highest
  @PDS-1631
  Escenario: Ver el listado de niveles de comportamientos (PDS-1631)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Esperar que el elemento NivelesComportamiento este presente
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @organizacion
  @estructura_organizativa
  @Niveles_de_Comportamiento
  @Highest
  @PDS-1634
  Escenario: Guardar un nivel de comportamiento con los campos en blanco (PDS-1634)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina inicio/Inicio.json
    * Click a Organizacion
    * Se cargan elementos de la pagina organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Competencia
    * Esperar que el elemento NivelesComportamiento este presente
    * Click a NivelesComportamiento
    * Se cargan elementos de la pagina organizacion/estructura_organizativa/NivelesComportamiento.json
    * Click a Nuevo
    * Click a GuardarNivelComportamiento
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto La descripción es requerida

