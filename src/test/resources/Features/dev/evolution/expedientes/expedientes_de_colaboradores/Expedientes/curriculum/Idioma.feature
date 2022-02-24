# language: es

@expedientes
@expedientes_colaboradores
@expedientes
@curriculum
@idiomas_expediente
Característica: IdiomasExpedientes
  Pruebas para entidad IdiomasExpedientes (Idiomas dominados por los expedientes)

  @test
  @Highest
  @PDS-7571
  Escenario: Crear un idioma en expedientes con información básica (PDS-7571)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdiomas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Idioma.json
    * Click a Nuevo
    * Llenar formulario:
      | Idioma  | Frances  |
      | Nivel   | Avanzado |
      | Habla   | True     |
      | Escribe | True     |
      | Lee     | False    |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Idioma de valor Frances
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Idioma  | Frances  |
      | Nivel   | Avanzado |
      | Habla   | True     |
      | Escribe | True     |
      | Lee     | False    |

  @test
  @Highest
  @PDS-7574
  Escenario: Editar un idioma en expedientes con información básica (PDS-7574)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdiomas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Idioma.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Idioma de valor Chino
    * Llenar formulario:
      | Idioma  | Español |
      | Nivel   | Básico  |
      | Habla   | False   |
      | Escribe | True    |
      | Lee     | False   |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Idioma de valor Español
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Idioma  | Español |
      | Nivel   | Básico  |
      | Habla   | False   |
      | Escribe | True    |
      | Lee     | False   |

  @test
  @Highest
  @PDS-7575
  Escenario: Eliminar un idioma en expedientes (PDS-7575)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdiomas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Idioma.json
    * Esperar que el elemento Tabla este visible
    * Eliminar registro con columna Idioma de valor English
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Idioma de dominio del expediente eliminado correctamente

  @test
  @Highest
  @PDS-7568
  Escenario: Consultar un idioma en expedientes con información básica (PDS-7568)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario auditoria
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdiomas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Idioma.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO  | 3         |
      | IdiomaRO  | português |
      | NivelRO   | Avanzado  |
      | HablaRO   | Sí        |
      | EscribeRO | Sí        |
      | LeeRO     | Sí        |

  @test
  @Highest
  @PDS-7577
  Escenario: Ver el listado un idioma en expedientes (PDS-7577)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdiomas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Idioma.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7576
  Escenario: Guardar un idioma en expedientes con los campos en blanco (PDS-7576)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Expedientes
    * Se cargan elementos de la pagina dev/evolution/expedientes/Expedientes.json
    * Click a ExpedientesColaboradores
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedientesColaboradores.json
    * Click a Empleados
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/ExpedienteEmpleado.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino 700003
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdiomas
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/expedientes/curriculum/Idioma.json
    * Click a Nuevo
    * Llenar formulario:
      | Idioma | português |
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El idioma 'português' ya está asignado
