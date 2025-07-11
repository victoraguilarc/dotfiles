### Descripción breve
Este comando guía al usuario paso a paso para recolectar toda la información necesaria de una **nueva feature** y
generar un _GitHub Issue_ listo para subirse al repositorio correspondiente. El issue resultante servirá como fuente de
verdad para que **Claude Code** ejecute la implementación técnica.

---

### Instrucciones para Claude (modo entrevista)

1. **Inicio**
   - Saluda brevemente y explica que harás una serie de preguntas para crear el issue.
   - **Pregunta clave #1 (obligatoria):**
     > “¿La feature es para un proyecto **backend**, **frontend** o **mobile**?”
     Guarda la respuesta en la variable `project_type`.

2. **Metadatos generales**
   Pregunta, una por una, las siguientes entradas (usa repreguntas cortas si la respuesta es ambigua):
   - `feature_title` – Título conciso de la feature.
   - `priority` – Alta / Media / Baja (opcional).

3. **Contexto & Objetivo**
   - `problem_statement` – ¿Qué problema o necesidad se resuelve?
   - `goal` – Resultado esperado para el usuario final.

4. **Requerimientos funcionales**
   - `user_stories` – Lista de user stories en formato **“Como [rol] quiero [acción] para [beneficio]”**.
   - `acceptance_criteria` – Criterios de aceptación explícitos (Gherkin o bullets).

5. **Detalles técnicos**
   - `tech_notes` – Consideraciones técnicas clave (API, librerías, patrones, etc.).
   - `dependencies` – Dependencias con otros equipos, micro-servicios o librerías.
   - `non_functional` – Requisitos de rendimiento, seguridad, escalabilidad, etc.

6. **Pruebas & QA**
   - `test_strategy` – Tipos de pruebas (unitarias, integración, UI, e2e) y herramientas.
   - `definition_of_done` – Checklist para dar por concluida la feature.

7. **Riesgos y mitigaciones**
   - `risks` – Posibles bloqueos o incertidumbres y plan de mitigación.

8. **Etiquetas y asignaciones (opcional)**
   - `labels` – Labels GitHub (e.g. `feature`, `backend`, `high priority`).
   - `assignees` – Usuarios GitHub responsables.
   - `story_points` – Estimación en puntos o tiempo.

9. **Confirmación final**
   - Muestra un resumen breve de los datos recopilados.
   - Pregunta: “¿Te gustaría añadir o corregir algo antes de generar el issue?”

10. **Generación del Issue**
    Cuando el usuario confirme, genera un bloque **Markdown** con la estructura:

    ```md
    ### 🚀 Feature: {feature_title}

    **Proyecto:** {repo_name}
    **Tipo:** {project_type}
    **Prioridad:** {priority}
    **Autor:** {author}
    **Versión objetivo:** {target_release}

    ---
    #### 1. Contexto
    {problem_statement}

    #### 2. Objetivo
    {goal}

    #### 3. User Stories
    {user_stories}

    #### 4. Criterios de Aceptación
    {acceptance_criteria}

    #### 5. Detalles Técnicos
    {tech_notes}

    **Dependencias:**
    {dependencies}

    **Requerimientos No Funcionales:**
    {non_functional}

    #### 6. Pruebas y QA
    {test_strategy}

    #### 7. Definition of Done ✅
    {definition_of_done}

    #### 8. Riesgos & Mitigaciones ⚠️
    {risks}

    ---
    **Etiquetas:** {labels}
    **Asignados:** {assignees}
    **Estimación:** {story_points}
    ```

11. **Salida**
    - Presenta el Markdown listo para copiar-pegar o subir vía la API de GitHub.
    - Ofrece, si el usuario lo solicita, el comando `gh issue create` pre-rellenado o un cURL contra la REST API de GitHub.

---

### Buenas prácticas durante la entrevista

- Usa lenguaje claro y directo; evita jerga innecesaria.
- Mantén cada pregunta en un mensaje separado para facilitar la respuesta.
- Cuando el usuario responda “skip” o “N/A”, registra la sección como tal y continúa.
- No generes el issue hasta recibir la confirmación final.
- Si el usuario parece confundido, parafrasea su respuesta y pide aclaración breve.

---
