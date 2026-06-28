# Proyecto Renacimiento · Catálogo

Mi universidad personal. No para sacar títulos, sino para volver a alimentar mi
curiosidad y disfrutar de mi propia compañía. Un catálogo visual de temas, cada
uno con sus lecturas, recursos y lo que voy aprendiendo.

---

## Abrirlo ahora mismo

Haz doble clic en `index.html`. Se abre en el navegador y ya guarda tus cambios
en ese navegador. No necesita instalar nada.

## Publicarlo en GitHub Pages (para tener un enlace)

1. Crea un repositorio en GitHub (público, en el plan gratuito) y sube estos
   archivos. Si usas Claude Code, basta con pedirle: *"inicializa un repo git,
   haz el primer commit y súbelo a un nuevo repo de GitHub llamado renacimiento"*.
2. En el repositorio, ve a **Settings → Pages**.
3. En *Build and deployment → Source*, elige **Deploy from a branch**.
4. Selecciona la rama `main` y la carpeta `/ (root)`. Guarda.
5. En un minuto, GitHub te da una URL tipo
   `https://tu-usuario.github.io/renacimiento/`. Ese es tu enlace.

Como `index.html` está en la raíz, será la portada automáticamente.

> Atajo con Claude Code: *"configura GitHub Pages para este repo y dame la URL"*.

## Sobre tus datos (léelo)

Esta versión guarda en el navegador (`localStorage`). El enlace se abre desde
cualquier dispositivo, **pero los datos no se sincronizan entre ellos**: lo que
apuntes en el móvil no aparece en el portátil, y al revés. Cada navegador guarda
lo suyo.

Si quieres que se sincronice entre dispositivos, el siguiente nivel es añadir un
pequeño backend (una base de datos y una forma de identificarte). Es un proyecto
mayor, pero perfectamente abordable con Claude Code cuando te apetezca.

---

## Cómo está hecho

- Un solo archivo, `index.html` (HTML + CSS + JS, sin dependencias ni build).
- Los datos viven en `localStorage` bajo la clave `renacimiento:catalogo`.
- Todo el estado es un objeto `{ topics: [...] }`; cada tema tiene `items`
  (lecturas y recursos) y `learnings` (apuntes con fecha).

## Ideas para seguir (sin prisa, sin convertirlo en una obligación)

- Filtrar dentro de un tema por "solo lo pendiente".
- Una vista "en qué ando ahora" que reúna lo que tienes en curso de todos los temas.
- Etiquetas para cruzar temas (p. ej. "asombro", "para una tarde tranquila").
- Exportar / importar el catálogo como copia de seguridad.
- Sincronización entre dispositivos (requiere backend).
