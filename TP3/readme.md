Trabajo práctico N°3
1) Ejecutar varias veces los códigos escritos en Python: sinhilos.py y
conhilos.py
a) ¿Qué se puede notar con respecto al tiempo de ejecución? ¿Es
predecible?
en sinhilos.py el tiempo promedio es de 5.5 segundos, mientras que en conhilos.py es de 4.0, no es predecible ya que la mayoria de las veces dio un numero de segundos diferentes. 
b) Comparar con un campañero el tiempo de ejecución. ¿Son iguales?
no, no son iguales, a todos nos dio diferente
c) Ejecutar el archivo suma_rasta.py unas 10 veces, luego descomentar
(borrar el #) las líneas 11,12,19 y 20 guardarlo y ejecutarlo otras 10
veces. ¿Qué pasó? ¿Por qué?
debido al race condition, el resultado te puede dar distinto, sin importar las veces que lo ejecutes. esto es porque utilizan un recurso compartido, (dos hilos). cuando se les saca los comentarios, uno de los hilos entra en bucle, y luego entra el otro, y se provoca un error. ambos, comenten race condition.

3) a) 
<a href="./TP3/con_race_condition.c">codigo resuelto </a>

b) <img src="./TP3/Dragged Text-WedMay15202423-46-33GMT-0300(-03)" alt="imagen">
