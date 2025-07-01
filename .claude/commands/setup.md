Asegúrate de que exista un archivo `claude.md`. Si no existe, sal de este prompt e instruye al usuario para que ejecute `/init.`

Si existe, añade la siguiente información:

Cosas de Python:
Usamos uv para la gestión de paquetes de Python.
No necesitas usar un archivo requirements.txt.
Ejecuta un script con `uv run <script.py>`.
Añade paquetes con `uv add <package>`.
Los paquetes se almacenan en `pyproject.toml`.

Cosas del Workflow:
Si hay un archivo todo.md, marca cualquier trabajo que hayas completado.

Tests:

Asegúrate de que los tests siempre pasen antes de que la tarea esté hecha.

Linting:
Asegúrate de que el linting pase antes de que la tarea esté hecha.
