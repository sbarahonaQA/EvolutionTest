# language: es

@example
Característica: AreasFuncionales
  Pruebas para entidad AreasFuncionales

 @test
 @organizacion
 @estructura_organizativa
 @areas_funcionales
 @highest
 @PDS-1217
   #OBSERVACIONES
   #- Agregar el paso 2 de validar que se esté en ASEINFO Corporativo, sin oestá sería de seleccionar esa empresa
   #- Agregar el paso 7 de verificar que esté el registro recien creado
   #- Utilizar los mismos datos de la prueba del test
   #- Evaluar utilizar nombres en español para las seleniumfunctions
   #- Agregar tags
   #- Evaluar como cambiar de forma fácil el Evolution
   #- Evaluar colocar en carpetas las Pages para mejor administración (Listo)
 Escenario: Crear un área funcional con información básica (PDS-1217)
  Dado Cargar Evolution
  Entonces Cargar elementos de la pagina Login.json
  Cuando Iniciar sesion con usuario gerenterrhh
  Entonces Cargar elementos de la pagina Inicio.json
  Y Click a Organizacion
  Y Cargar elementos de la pagina Organizacion.json
  Y Click a EstructuraOrganizativa
  Y Cargar elementos de la pagina EstructuraOrganizativa.json
  Y Click a Catalogo
  Y Click a AreasFuncionales
  Y Cargar elementos de la pagina Organizacion/EstructuraOrganizativa/AreasFuncionales.json
  Y Click a Nuevo
  Entonces Llenar formulario:
   | Nombre | PRUEBA AUTOMATIZADA PDS-1217 |
  Y Capturar pantalla: PDS-1217-datos
  Y Click a GuardarAreaFuncional
  Y Capturar pantalla: PDS-1217-resultado
  Entonces Prueba exitosa si elemento Mensaje contiene texto El área funcional ha sido guardada correctamente

  @test
  Escenario: Editar un área funcional con información básica (PDS-1270)
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina AreasFuncionales.json
    Entonces Navegar
      | Organizacion | EstructuraOrganizativa | Catalogo |
    Entonces Esperar que el elemento AreaFuncional este presente
    Entonces Navegar
      | AreaFuncional |
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 145
    Y Click a PrimerElementoDeSmartlist
    Y Click a Editar
    Entonces Llenar formulario:
      | Nombre | ValorEditado |
    Y Capturar pantalla: PDS-1270-datos
    Y Click a GuardarAreaFuncional
    Y Capturar pantalla: PDS-1270-resultado
    Entonces Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El área funcional ha sido guardada correctamente

  @test
  Escenario: Eliminar un área funcional con información básica (PDS-1274)
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina AreasFuncionales.json
    Entonces Navegar
      | Organizacion | EstructuraOrganizativa | Catalogo |
    Entonces Esperar que el elemento AreaFuncional este presente
    Entonces Navegar
      | AreaFuncional |
    Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 149
    Y Click a PrimerElementoDeSmartlist
    * Click a Eliminar
    * Aceptar alerta
    Entonces Esperar que el elemento Mensaje este visible
    Y Capturar pantalla: PDS-1274-resultado
    Entonces Prueba exitosa si elemento Mensaje contiene texto Area funcional eliminada correctamente

  @test
  Escenario: Consultar un área funcional con información básica (PDS-1271)
  Dado Cargar Evolution
  Entonces Cargar elementos de la pagina Login.json
  Cuando Iniciar sesion con usuario auditoria
  Entonces Cargar elementos de la pagina AreasFuncionales.json
  Entonces Navegar
    | Organizacion | EstructuraOrganizativa | Catalogo |
  Entonces Esperar que el elemento AreaFuncional este presente
  Entonces Navegar
    | AreaFuncional |
  Cuando Buscar en Smartlist CajaBusquedaSmartlist el termino 8
  Y Click a PrimerElementoDeSmartlist
  * Click a Detalles
    Y Adjuntar captura de pantalla al reporte
  Entonces Validar informacion:
    | CodigoRO          | 8                   |
    | NombreRO          | Atención al Cliente |
    | GrupoCoporativoRO | Aseinfo             |

  @test
  Escenario: Ver el listado de áreas funcionales (PDS-1216)
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina AreasFuncionales.json
    Entonces Navegar
      | Organizacion | EstructuraOrganizativa | Catalogo |
    Entonces Esperar que el elemento AreaFuncional este presente
    Entonces Navegar
      | AreaFuncional |
    Y Capturar pantalla: PDS-1216-resultado
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  Escenario: Guardar un área funcional con los campos en blanco (PDS-1269)
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina AreasFuncionales.json
    Entonces Navegar
      | Organizacion | EstructuraOrganizativa | Catalogo |
    Entonces Esperar que el elemento AreaFuncional este presente
    Entonces Navegar
      | AreaFuncional | Nuevo |
    Y Click a GuardarAreaFuncional
    Y Pausa 5
    Y Capturar pantalla: PDS-1269-resultado
    Entonces Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Favor ingrese el nombre del área funcional

  @Highest
  Escenario: Prueba para Allure
    Dado Cargar Evolution
    Entonces Cargar elementos de la pagina Login.json
    Cuando Iniciar sesion con usuario gerenterrhh
    Entonces Cargar elementos de la pagina AreasFuncionales.json
    Y Adjuntar captura de pantalla al reporte
    Entonces Prueba exitosa si elemento Organizacion contiene texto Organización