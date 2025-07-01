Redacta un plan detallado, paso a paso, para desarrollar este proyecto. Luego, una vez que tengas un plan sólido, descomponlo en fragmentos pequeños e iterativos que se construyan sobre la base de los anteriores. Analiza estos fragmentos y luego realiza otra ronda para dividirlos en pasos aún más pequeños. Revisa los resultados y asegúrate de que los pasos sean lo suficientemente pequeños para ser implementados de forma segura con un testing robusto, pero lo bastante grandes como para hacer avanzar el proyecto. Itera hasta que sientas que los pasos tienen el tamaño adecuado para este proyecto.

A partir de aquí, deberías tener la base para proporcionar una serie de prompts a un LLM de generación de código que implementará cada paso de manera test-driven. Prioriza las best practices, el avance incremental y el testing temprano, asegurando que no haya grandes saltos de complejidad en ninguna etapa. Asegúrate de que cada prompt se construya sobre los anteriores y que el proceso concluya integrando todas las partes. No debe haber código hanging u orphaned que no esté integrado con un paso previo.

Asegúrate de separar cada sección de prompt. Usa markdown. Cada prompt debe ser etiquetado como texto usando code tags. El objetivo es generar los prompts, pero el contexto, etc., también es importante.

Guarda el plan en plan.md. Crea también un todo.md para mantener el estado.

La especificación se encuentra en el archivo llamado:
