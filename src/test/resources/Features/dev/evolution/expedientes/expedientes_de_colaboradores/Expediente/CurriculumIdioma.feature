# language: es

@organizacion
@estructura_organizativa
@puestos
@CurriculumIdioma
Característica: Curriculum Idioma
  Pruebas para entidad Curriculum Idioma

  @test
  @Highest
  @PDS-7571
  Escenario: Crear una Idioma en expedientes con información básica (PDS-7571)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdioma
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumIdioma.json
    * Click a Nuevo
    * Esperar 3 segundos
    * Llenar formulario:
      | Idioma  | Frances |
      | Nivel   | Avanzado|
      | Habla   | True  |
      | Escribe | True |
      | Lee     | False |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar 2 segundos
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Idioma de valor Frances
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Idioma  | Frances |
      | Nivel   | Avanzado|
      | Habla   | True  |
      | Escribe | True |
      | Lee     | False |

  @test
  @Highest
  @PDS-7574
  Escenario: Editar un Idioma en expedientes con información básica (PDS-7574)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdioma
    * Esperar 3 segundos
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumIdioma.json
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Idioma de valor Chino
    * Esperar 3 segundos
    * Llenar formulario:
      | Idioma  | Español  |
      | Nivel   | Básico|
      | Habla   | False  |
      | Escribe | True |
      | Lee     | False |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Esperar que el elemento Tabla este visible
    * Editar registro con columna Idioma de valor Español
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Idioma  | Español  |
      | Nivel   | Básico|
      | Habla   | False  |
      | Escribe | True |
      | Lee     | False |

  @test
  @Highest
  @PDS-7544
  Escenario: Eliminar una educación en expedientes (PDS-7544)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdioma
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumIdioma.json
    * Esperar que el elemento Tabla este visible
    * Esperar 3 segundos
    * Eliminar registro con columna Idioma de valor English
    * Aceptar alerta
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Idioma de dominio del expediente eliminado correctamente

  @test
  @Highest
  @PDS-7568
  Escenario: Consultar un Idioma en expedientes con información básica (PDS-7568)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdioma
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumIdioma.json
    * Esperar que el elemento Tabla este visible
    * Click a RegistroConsultar
    * Esperar 3 segundos
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | CodigoRO  | 3  |
      | IdiomaRO  | português  |
      | NivelRO   | Avanzado |
      | HablaRO   | Sí   |
      | EscribeRO | Sí   |
      | LeeRO     | Sí   |

  @test
  @Highest
  @PDS-7577
  Escenario: Ver el listado de Idiomas del expediente de un puesto (PDS-7577)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Esperar 2 segundos
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdioma
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumIdioma.json
    * Esperar que el elemento Tabla este visible
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Tabla | RegresarListado |


  @test
  @Highest
  @PDS-7576
  Escenario: Guardar un Idioma de un puesto con los campos en blanco (PDS-7576)
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
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Abrego Labbe, Rene Armando
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a CurriculumIdioma
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Expediente/CurriculumIdioma.json
    * Click a Nuevo
    * Esperar 2 segundos
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento MensajeError este visible
    Entonces Prueba exitosa si elemento MensajeError contiene texto El idioma 'Chino' ya está asignado
