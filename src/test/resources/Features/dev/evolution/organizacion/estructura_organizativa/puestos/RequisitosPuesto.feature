# language: es

@organizacion
@estructura_organizativa
@puestos
@RequisitosPuesto
Característica: RequisitosPuesto
  Pruebas para entidad RequisitosPuesto

  @test
  @Highest
  @PDS-6725
  Escenario: Consultar un requisito de puesto con información básica (PDS-6725)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RequisitosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RequisitosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Click a 8-10Anios
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | Tipo      | Experiencia Requerida |
      | Requisito | 8-10 años             |
      | Requerido | True                  |
      | Operador  | No Utilizado          |
      | Métrico   | 0                     |

  @test
  @Highest
  @PDS-6726
  Escenario: Asociar un requisito de puesto (PDS-6726)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RequisitosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RequisitosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Click a Idiomas
    * Click a AgregarRequisito
    * Click a GuardarRequisitos
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Requisitos del puesto guardados correctamente


  @test
  @Highest
  @PDS-6727
  Escenario: Desasociar un requisito de puesto (PDS-6727)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RequisitosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RequisitosPuesto.json
    * Esperar que el elemento Tabla este visible
    * Seleccionar registro con columna Tipo de valor Género
    * Click a EliminarRequisito
    * Aceptar alerta
    * Click a GuardarRequisitos
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto Requisitos del puesto guardados correctamente

  @test
  @Highest
  @PDS-6728
  Escenario: Ver el listado de requisitos de puestos (PDS-6728)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evolution/inicio/Inicio.json
    * seleccionar la empresa ASEINFO Corporativo si no está seleccionada
    * Click a Organizacion
    * Se cargan elementos de la pagina dev/evolution/organizacion/Organizacion.json
    * Click a EstructuraOrganizativa
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/EstructuraOrganizativa.json
    * Click a Puestos
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/Puestos.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Para Realizar Modificaciones
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Click a RequisitosPuesto
    * Se cargan elementos de la pagina dev/evolution/organizacion/estructura_organizativa/puestos/RequisitosPuesto.json
    * Esperar que el elemento Tabla este visible
    Entonces Verificar que esten presentes:
      | Tabla | AgregarRequisito | EliminarRequisito | EliminarTodos | GuardarRequisitos | RegresarAlListado |