# EXAMEN MYSQL 
## 1). Analisis de la Tabla Inicial

### Indique ¿cuál sería la ___Clave Primaria Compuesta___ de esta tabla?

La clave primaria compuesta de esta tabla es `id_venta`, ya que como podemos ver la tabla es como tal un registro grande y desordenado de una venta, que esta compuesta por las claves foraneas de `id_cliente` e `id_producto`.

### Liste las ___Dependencias Funcionales___ presentes.

* id_producto a nombre_producto y 
* id_cliente a nombre_cliente

### Explique por qué la tabla cumple con la ___1FN___.

Porque cada columna dentro de la tabla corresponde a explicitamente un solo dato. Osea, no hay columnas que recopilen datos dobles. Cumple con el principio de atomicidad.

### Explique por qué la tabla **NO cumple** con la ___2FN___.



