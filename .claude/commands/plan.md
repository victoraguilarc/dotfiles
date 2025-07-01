Elabora un plan detallado, paso a paso, para construir este proyecto. Luego, una vez que tengas un plan sólido, divídelo en pequeños chunks iterativos que se construyan unos sobre otros. Revisa estos chunks y luego haz otra ronda para dividirlos en pasos pequeños. Revisa los resultados y asegúrate de que los pasos sean lo suficientemente pequeños para ser implementados de forma segura, pero lo suficientemente grandes para hacer avanzar el proyecto. Itera hasta que sientas que los pasos tienen el tamaño adecuado para este proyecto.

A partir de aquí, deberías tener la base para proporcionar una serie de prompts para un LLM de generación de código que implementará cada paso. Prioriza las best practices y el progreso incremental, asegurando que no haya grandes saltos de complejidad en ninguna etapa. Asegúrate de que cada prompt se construya sobre los prompts anteriores y termine conectando (wiring) las cosas. No debe haber código hanging u orphaned que no esté integrado en un paso anterior.

Asegúrate de separar cada sección de prompt. Usa markdown. Cada prompt debe estar etiquetado como texto usando code tags. El objetivo es generar prompts, pero el contexto, etc., también es importante.

Guarda el plan en plan.md. También crea un todo.md para mantener el state.

La spec está en el archivo llamado:
