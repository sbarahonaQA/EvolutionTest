# language: es

@planillas
@planilla_quincenal
@ingresos
Característica: SalarioOrdinario
  Pruebas para tipo de ingreso salario

  @test
  @Highest
  @PDS-10
  @PQ20200101
  @sv
  Escenario: Cálculo de salario para empleado que ingresó antes del inicio de la primera quincena (PDS-10)
    Dado que carga Evolution
    * Se cargan elementos de la pagina Login.json
    * Inicio sesion con usuario planillassv
    * Se cargan elementos de la pagina DEV/inicio/Inicio.json
    * seleccionar la empresa ASEINFO El Salvador si no está seleccionada
    * Click a Nominas
    * Se cargan elementos de la pagina DEV/nominas/Nominas.json
    * Click a AdministracionSalarios
    * Se cargan elementos de la pagina DEV/nominas/administracion_de_salarios/AdministracionSalarios.json
    * Click a ConsultaHistorialPagos
    * Se cargan elementos de la pagina DEV/nominas/administracion_de_salarios/ConsultaHistorialPagos.json
    * Aplicar busqueda avanzada:
      | TipoPlanillaBA   | QN       |
      | CodigoPlanillaBA | 20200101 |
      | EmpleadoBA       | 300001   |
    * Click a PrimerElementoDeSmartlist
    * Adjuntar captura de pantalla al reporte
    Entonces Comprobar que el valor del ingreso Salario sea de $ 3,300.00
    * Comprobar que los dias de Salario sean 15.00
    #* Comprobar que las horas de Salario sean 15.00
    * Comprobar que el valor del descuento AFP sea de $ 194.10
    * Comprobar que el valor de la reserva Insaforp sea de $ 5.00
    * Comprobar que el total de ingresos sea de 3,300.00
    * Comprobar que el total de descuentos sea de 1,469.94
    * Comprobar que el neto a pagar sea de 1,830.06
    # Comprobar que el valor del descuento AFP sea de 194.10 moneda dolares


