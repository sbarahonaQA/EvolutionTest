# language: es

@evowave
@consultas
Característica: Incapacidades
  Pruebas para entidad Incapacidades

  @test
  @Highest
  @PDS-4348
  Escenario: Consulta de incapacidad (PDS-4348)
    Dado que carga EvolutionWave
    * Se cargan elementos de la pagina dev/evowave/Login.json
    * Click a Ingresar
    * Esperar que el elemento UsuarioIDS este presente
    * Inicio sesion con usuario planillascorp
    * Se cargan elementos de la pagina dev/evowave/Inicio.json
    * Esperar 4 segundos
    * Refrescar pagina
    * Esperar que el elemento Consultas este presente
    * Click a Consultas
    * Se cargan elementos de la pagina dev/evowave/consultas/Consultas.json
    * Esperar que el elemento Incapacidades este presente
    * Click a Incapacidades
    * Se cargan elementos de la pagina dev/evowave/consultas/incapacidades/Incapacidades.json
    * Esperar que el elemento Desde este presente
    * Click a Desde
    * Click a 2020
    * Click a Febrero
    * Click a 5
    * Click a Hasta
    * Click a 2020
    * Click a Febrero
    * Click a 10
    * Click a Consultar
    * Adjuntar captura de pantalla al reporte
    Entonces Validar datos:
      | Riesgo       | Accidente                |
      | Fecha Inicio | 5 feb. 2020	            |
      | Fecha Fin    | 10 feb. 2020	            |
      | Tipo         | ESQUINCE TOBILLO DERECHO |
      | Estado       | Autorizado               |