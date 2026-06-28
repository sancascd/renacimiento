# Contexto para Claude Code — Renaissance Academy (antes «Proyecto Renacimiento»)

Este archivo guarda el *alma* del proyecto. Léelo antes de hacer cambios y
respétalo, sobre todo las reglas de producto.

## Qué es

Una "universidad personal" privada para una sola persona. No es una app de
productividad. Es un espacio para alimentar la curiosidad y disfrutar de la
propia compañía. El objetivo no es rendir, es comprender y asombrarse.

## Reglas de producto (las más importantes)

El único riesgo real del proyecto es que se convierta en otra fuente de
autoexigencia. Por eso, al añadir cualquier funcionalidad:

- **Nada de métricas de rendimiento.** Sin rachas, sin puntuaciones, sin Elo,
  sin porcentajes de progreso, sin "días seguidos", sin nada que se pueda fallar.
- Progreso antes que perfección. Constancia antes que intensidad.
- Curiosidad antes que rendimiento. Comparación solo con una misma.
- El tono siempre es cálido, tranquilo y sin presión. Los textos invitan, no exigen.

Si una idea de feature introduce presión o competición, replantéala o descártala.

## Los cuatro pilares (el por qué)

1. **Comprender el mundo** — astronomía, historia, ciencia, filosofía. Asombro.
2. **Resolver problemas** — ajedrez, cubo de Rubik, lógica. Concentración, sin competir.
3. **Crear** — dibujo, arquitectura, diseño, escritura, su marca.
4. **Cuerpo** — gimnasio, boxeo, caminar, descanso. La base.

El catálogo organiza sobre todo el pilar 1, pero puede crecer a los demás.

## Estructura técnica

- Un solo archivo `index.html`, sin build ni dependencias. Vanilla JS.
- Persistencia: `localStorage`, clave `renacimiento:catalogo`.
- Estado: `{ topics: [ { id, name, blurb, items:[{id,kind,title,author,note,status}], learnings:[{id,ts,date,text}] } ] }`.
- `kind`: libro | documental | video | articulo | curso | pregunta | otro.
- `status`: pendiente → encurso → hecho (se cicla con un clic en el círculo).

Mantén el patrón de un solo archivo mientras sea razonable. Si crece mucho,
separa CSS/JS antes que romper la simplicidad.

## Tokens de diseño (mantener la coherencia)

Estética: **academia girlboss, minimalista y con calma** — editorial cálida, marfil
y oro suave, mucho aire, sin saturar. Hay una **landing** (vista `landing`) con un
arco renacentista como portal de entrada, animaciones lentas y serenas.

- Fondo marfil `#f7f2ea`, secundario `#efe7d9`, tarjetas `#fcfaf4`, tinta `#2c2823`.
- Acento oro `#b18a4a` (brillante `#c7a25a`). Rosa empolvado `#c0917f` como toque suave.
- Tipografías: **Cormorant Garamond** (titulares, peso ligero/itálica), **Spectral**
  (texto), **Jost** (etiquetas en mayúsculas con tracking).
- Cabecera clara translúcida (no oscura). Botones primarios en tinta; el oro como acento.
- Textura de grano sutil sobre todo (overlay SVG). Respeta `prefers-reduced-motion`.

## Ideas de evolución (opcionales)

- Filtro "solo pendiente" dentro de un tema.
- Vista transversal "en qué ando ahora".
- Etiquetas suaves ("asombro", "para una tarde tranquila").
- Exportar/importar como copia de seguridad.
- Sincronización entre dispositivos (necesitaría un backend ligero).
