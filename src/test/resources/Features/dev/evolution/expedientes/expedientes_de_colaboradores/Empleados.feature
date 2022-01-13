# language: es

@expedientes
@expedientes_colaboradores
@empleados
Característica: Empleados
  Pruebas para entidad Empleados (Empleados)

  @test
  @Highest
  @PDS-1417
  Escenario: Crear un Empleado con información básica (PDS-1417)
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
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Empleados.json
    * Click a Nuevo
    * Click a Continuar
    * Llenar formulario:
      | codigoPaisDigita     | Guatemala                  |
      | codigoTituloPersonal | Ingeniero                  |
      | PrimerNombre         | Prueba Creacion            |
      | PrimerApellido       | Gonzalez                   |
      | Sexo                 | Masculino                  |
      | EstadoCivil          | Viudo(a)                   |
      | Profesion            | Bachiller Tecnico Contador |
      | FechaNacimiento      | 21/8/1990                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Click a Regresar
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba Creacion
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | codigoPaisDigita     | Guatemala                  |
      | codigoTituloPersonal | Ingeniero                  |
      | PrimerNombre         | Prueba Creacion            |
      | PrimerApellido       | Gonzalez                   |
      | Sexo                 | Masculino                  |
      | EstadoCivil          | Viudo(a)                   |
      | Profesion            | Bachiller Tecnico Contador |
      | FechaNacimiento      | 21/8/1990                  |

  @test
  @Highest
  @PDS-1431
  Escenario: Editar un Empleado con información básica (PDS-1431)
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
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Empleados.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Prueba, Para Editar
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    * Llenar formulario:
      | codigoPaisDigita     | Guatemala                  |
      | codigoTituloPersonal | Licenciado                 |
      | PrimerNombre         | Editado                    |
      | SegundoNombre        | Editado                    |
      | PrimerApellido       | Pruebas                    |
      | Sexo                 | Masculino                  |
      | EstadoCivil          | Divorciado(a)              |
      | Profesion            | Bachiller Tecnico Contador |
      | FechaNacimiento      | 21/8/2010                  |
    * Adjuntar captura de pantalla al reporte
    * Click a Guardar
    * Click a Regresar
    * Refrescar pagina
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Pruebas, Editado Editado
    * Click a PrimerElementoDeSmartlist
    * Click a Editar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | codigoPaisDigita     | Guatemala                  |
      | codigoTituloPersonal | Licenciado                 |
      | PrimerNombre         | Editado                    |
      | SegundoNombre        | Editado                    |
      | PrimerApellido       | Pruebas                    |
      | Sexo                 | Masculino                  |
      | EstadoCivil          | Divorciado(a)              |
      | Profesion            | Bachiller Tecnico Contador |
      | FechaNacimiento      | 21/8/2010                  |


  @test
  @Highest
  @PDS-1526
  Escenario: Consultar una Afición con información básica (PDS-1526)
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
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Empleados.json
    * Buscar en Smartlist CajaBusquedaSmartlist el termino Blanco Gómez, Ainhoa Irati
    * Click a PrimerElementoDeSmartlist
    * Click a Detalles
    * Adjuntar captura de pantalla al reporte
    Entonces Validar informacion:
      | PrimerNombreRO    | Ainhoa     |
      | SegundoNombreRO   | Irati      |
      | PrimerApellidoRO  | Blanco     |
      | SegundoApellidoRO | Gómez      |
      | Sexo              | Femenino   |
      | EdadRO            | 41 Años    |
      | EstadoCivilRO     | Soltero(a) |
      | ProfesionRO       | Estudiante |
      | NacionalidadRO    | Guatemala  |
      | FechaNacimientoRO | 27/2/1980  |

  @test
  @Highest
  @PDS-1415
  Escenario: Ver el listado de Empleados (PDS-1415)
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
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Empleados.json
    * Adjuntar captura de pantalla al reporte
    Entonces Verificar que esten presentes:
      | Nuevo | Editar | Eliminar | CajaBusquedaSmartlist | ElementosMostrados |

  @test
  @Highest
  @PDS-1423
  Escenario: Guardar un Empleado con los campos en blanco (PDS-1423)
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
    * Se cargan elementos de la pagina dev/evolution/expedientes/expedientes_de_colaboradores/Empleados.json
    * Click a Nuevo
    * Click a Continuar
    * Click a Guardar
    * Adjuntar captura de pantalla al reporte
    * Esperar que el elemento Mensaje este visible
    Entonces Prueba exitosa si elemento Mensaje contiene texto El primer apellido es requerido
    * Prueba exitosa si elemento Mensaje contiene texto El primer nombre es requerido
    * Prueba exitosa si elemento Mensaje contiene texto La profesión es requerida
    * Prueba exitosa si elemento Mensaje contiene texto El sexo es requerido