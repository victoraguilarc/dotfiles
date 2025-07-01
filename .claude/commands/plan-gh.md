Redacta un blueprint detallado y paso a paso para construir este proyecto. Luego, una vez que tengas un plan sólido, divídelo en partes pequeñas e iterativas que se construyan una sobre otra. Revisa estos bloques y haz otra pasada para descomponerlos aún más en pasos pequeños. Revisa los resultados y asegúrate de que los pasos sean lo suficientemente pequeños como para implementarse de forma segura, pero lo suficientemente grandes como para avanzar en el proyecto. Itera hasta que sientas que los pasos tienen el tamaño adecuado para este proyecto.

A partir de aquí, deberías tener la base para proporcionar una serie de prompts para un LLM de generación de código que implementará cada paso. Prioriza las buenas prácticas y el progreso incremental, asegurándote de que no haya saltos grandes en complejidad en ninguna etapa. Asegúrate de que cada prompt se base en los anteriores y termine conectando todas las piezas. No debe haber código suelto o no integrado en pasos anteriores.

Asegúrate de separar cada sección de prompt. Usa markdown. Cada prompt debe estar etiquetado como texto utilizando etiquetas de código (`). El objetivo es generar prompts, pero también es importante el contexto. Para cada paso, crea un issue en GitHub.

Guarda el plan en `plan.md`. También crea un `todo.md` para mantener el estado.

La especificación se encuentra en el archivo llamado:
