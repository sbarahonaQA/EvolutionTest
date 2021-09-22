# language: es

@example
Característica: AreasFuncionales
  Pruebas para entidad AreasFuncionales

 @test
 @organizacion
 @estructura_organizativa
 @areas_funcionales
 @Highest
 @PDS-1217
   #OBSERVACIONES
   #- Agregar el paso 7 de verificar que esté el registro recien creado
   #- Utilizar los mismos datos de la prueba del test
   #- SeleniumFunction se va a dejar en inglés, revisar que todas estén en inglés
   #- Evaluar utilizar nombres en español para el stepdefinition y conjugarlos ej. hago click en
   #- Agregar tags
   #- Evaluar colocar en carpetas las Pages para mejor administración
   #- Revisar los xpath
   #- Se cambio el Navegar por clicks inviduales
 Escenario: Crear un área funcional con información básica (PDS-1217)
  Dado que carga Evolution
  Entonces Cargar elementos de la pagina Login.json
  Cuando Iniciar sesion con usuario gerenterrhh
  Entonces Cargar elementos de la pagina Inicio.json
  #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
  * Click a Organizacion
  * Cargar elementos de la pagina Organizacion.json
  * Click a EstructuraOrganizativa
  * Cargar elementos de la pagina EstructuraOrganizativa.json
  * Click a Catalogo
  Entonces Esperar que el elemento AreasFuncionales este presente
  * Click a AreasFuncionales
  * Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
  * Click a Nuevo
  Entonces Llenar formulario:
    | Nombre | Área Funcional 1 |
   * Adjuntar captura de pantalla al reporte
   * Click a GuardarAreaFuncional
   * Refrescar pagina
   Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino Área Funcional 1
   * Click a PrimerElementoDeSmartlist
   * Click a Editar
   * Adjuntar captura de pantalla al reporte
   Entonces Prueba exitosa si elemento Nombre contiene texto Área Funcional 1

  @test
  Escenario: Editar un área funcional con información básica (PDS-1270)
    Dado que carga Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina Inicio.json
  #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Cargar elementos de la pagina Organizacion.json
    * Click a EstructuraOrganizativa
    * Cargar elementos de la pagina EstructuraOrganizativa.json
    * Click a Catalogo
    Entonces Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 133
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Llenar formulario:
      | Nombre | ValorEditado |
    * Adjuntar captura de pantalla al reporte
    * Click a GuardarAreaFuncional
    * Refrescar pagina
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 133
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Nombre contiene texto ValorEditado

  @test
  Escenario: Eliminar un área funcional con información básica (PDS-1274)
    Dado que carga Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Cargar elementos de la pagina Organizacion.json
    * Click a EstructuraOrganizativa
    * Cargar elementos de la pagina EstructuraOrganizativa.json
    * Click a Catalogo
    Entonces Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 15
    * Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Prueba exitosa si elemento ElementosMostrados contiene texto No hay registros

  @test
  Escenario: Consultar un área funcional con información básica (PDS-1271)
    Dado que carga Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario auditoria
    Entonces Cargar elementos de la pagina Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Cargar elementos de la pagina Organizacion.json
    * Click a EstructuraOrganizativa
    * Cargar elementos de la pagina EstructuraOrganizativa.json
    * Click a Catalogo
    Entonces Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 8
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO          | 8                   |
      | NombreRO          | Atención al Cliente |
      | GrupoCoporativoRO | Aseinfo             |

  @test
  Escenario: Ver el listado de áreas funcionales (PDS-1216)
    Dado que carga Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Cargar elementos de la pagina Organizacion.json
    * Click a EstructuraOrganizativa
    * Cargar elementos de la pagina EstructuraOrganizativa.json
    * Click a Catalogo
    Entonces Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  Escenario: Guardar un área funcional con los campos en blanco (PDS-1269)
    Dado que carga Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina Inicio.json
    #Pero seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Cargar elementos de la pagina Organizacion.json
    * Click a EstructuraOrganizativa
    * Cargar elementos de la pagina EstructuraOrganizativa.json
    * Click a Catalogo
    Entonces Esperar que el elemento AreasFuncionales este presente
    * Click a AreasFuncionales
    * Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
    * Click a Nuevo
    * Click a GuardarAreaFuncional
    * Adjuntar captura de pantalla al reporte
    Entonces Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese el nombre del área funcional

