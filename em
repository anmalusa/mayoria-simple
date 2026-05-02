@import url('https://fonts.googleapis.com/css2?family=Anton&family=Bebas+Neue&family=DM+Serif+Display:ital@0;1&family=DM+Sans:ital,wght@0,300;0,400;0,500;0,600;1,400&family=JetBrains+Mono:wght@400;500&display=swap');

/* ══════════════════════════════════
   MAYORÍA SIMPLE v2 — Variables
══════════════════════════════════ */
:root {
  --rojo:        #E63022;
  --rojo-dark:   #b52419;
  --rojo-glow:   rgba(230,48,34,0.18);
  --negro:       #0d0d0d;
  --blanco:      #fafaf8;
  --crema:       #f4f2ec;
  --gris1:       #e8e6df;
  --gris2:       #c8c5bc;
  --gris3:       #8a8780;
  --texto:       #1a1a18;
  --texto-suave: #5a5850;
  --verde:       #1a7a4a;
  --azul:        #1a4a8a;
  --naranja:     #d4600a;
  --max-w:       1120px;
  --font-display:'DM Serif Display', Georgia, serif;
  --font-body:   'DM Sans', sans-serif;
  --font-mono:   'JetBrains Mono', monospace;
  --font-impact: 'Anton', sans-serif;
}

*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

html { scroll-behavior: smooth; }

body {
  font-family: var(--font-body);
  background: var(--blanco);
  color: var(--texto);
  font-size: 16px;
  line-height: 1.6;
  overflow-x: hidden;
}

a { color: inherit; text-decoration: none; }

/* ══════════════════
   AVISO TOP
══════════════════ */
.aviso {
  background: var(--negro);
  color: var(--gris2);
  text-align: center;
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.12em;
  padding: 6px 1rem;
  text-transform: uppercase;
  border-bottom: 1px solid #222;
}
.aviso strong { color: var(--rojo); }

/* ══════════════════
   HEADER
══════════════════ */
.site-header {
  background: var(--negro);
  padding: 0 2rem;
  max-width: 100%;
  border-bottom: 3px solid var(--rojo);
  position: relative;
  overflow: hidden;
}

.site-header::before {
  content: '';
  position: absolute;
  inset: 0;
  background: repeating-linear-gradient(
    90deg,
    transparent,
    transparent 80px,
    rgba(255,255,255,0.015) 80px,
    rgba(255,255,255,0.015) 81px
  );
  pointer-events: none;
}

.header-inner {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 1.25rem 0 1rem;
}

.header-meta {
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-family: var(--font-mono);
  font-size: 9px;
  color: var(--gris3);
  text-transform: uppercase;
  letter-spacing: 0.12em;
  margin-bottom: 1rem;
}

.header-meta .dot { color: var(--rojo); margin: 0 6px; }

/* NAMEPLATE — tipografía tipo impacto bold condensed */
.nameplate {
  text-align: center;
  line-height: 0.85;
  margin-bottom: 0.75rem;
  cursor: pointer;
}

.nameplate .word1 {
  display: block;
  font-family: var(--font-impact);
  font-size: clamp(64px, 12vw, 130px);
  letter-spacing: -0.02em;
  color: var(--blanco);
  text-transform: uppercase;
  line-height: 0.9;
}

.nameplate .word2 {
  display: block;
  font-family: var(--font-impact);
  font-size: clamp(44px, 8vw, 88px);
  letter-spacing: 0.15em;
  color: var(--rojo);
  text-transform: uppercase;
  line-height: 1;
}

.tagline {
  text-align: center;
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.25em;
  text-transform: uppercase;
  color: var(--gris3);
  padding-top: 0.75rem;
  border-top: 1px solid #2a2a2a;
  margin-top: 0.5rem;
}

.tagline .accent { color: var(--rojo); }

/* ══════════════════
   NAV
══════════════════ */
.site-nav {
  background: var(--negro);
  border-bottom: 1px solid #1e1e1e;
  position: sticky;
  top: 0;
  z-index: 200;
}

.nav-inner {
  max-width: var(--max-w);
  margin: 0 auto;
  display: flex;
  overflow-x: auto;
  scrollbar-width: none;
  padding: 0 2rem;
}
.nav-inner::-webkit-scrollbar { display: none; }

.nav-inner a {
  font-family: var(--font-mono);
  font-size: 10px;
  font-weight: 500;
  letter-spacing: 0.14em;
  text-transform: uppercase;
  color: var(--gris3);
  padding: 11px 14px;
  white-space: nowrap;
  cursor: pointer;
  transition: color 0.2s, background 0.2s;
  border-bottom: 2px solid transparent;
  display: flex;
  align-items: center;
  gap: 6px;
}

.nav-inner a:hover {
  color: var(--blanco);
  text-decoration: none;
  border-bottom-color: var(--gris3);
}

.nav-inner a.activo {
  color: var(--rojo);
  border-bottom-color: var(--rojo);
}

.nav-icon { font-size: 11px; }

/* ══════════════════
   CONTENEDOR
══════════════════ */
.contenedor {
  max-width: var(--max-w);
  margin: 0 auto;
  padding: 2.5rem 2rem;
}

/* ══════════════════
   SECCIÓN CHIP
══════════════════ */
.chip {
  display: inline-flex;
  align-items: center;
  gap: 5px;
  font-family: var(--font-mono);
  font-size: 9px;
  font-weight: 500;
  letter-spacing: 0.14em;
  text-transform: uppercase;
  padding: 3px 9px;
  border-radius: 100px;
  margin-bottom: 10px;
}
.chip-rojo  { background: var(--rojo);  color: #fff; }
.chip-verde { background: var(--verde); color: #fff; }
.chip-azul  { background: var(--azul);  color: #fff; }
.chip-naranja{background: var(--naranja);color:#fff; }
.chip-negro { background: var(--negro); color: #fff; }
.chip-gris  { background: var(--gris1); color: var(--texto-suave); }

/* ══════════════════
   DIVIDER ESTILO
══════════════════ */
.divider {
  display: flex;
  align-items: center;
  gap: 12px;
  margin: 2.5rem 0 1.5rem;
}
.divider::before, .divider::after {
  content: '';
  flex: 1;
  height: 1px;
  background: var(--gris1);
}
.divider-label {
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--gris3);
  white-space: nowrap;
}
.divider-label .sq { color: var(--rojo); margin: 0 4px; }

/* ══════════════════
   PORTADA HERO
══════════════════ */
.hero-grid {
  display: grid;
  grid-template-columns: 1fr 300px;
  gap: 0;
  border: 1px solid var(--gris1);
  border-radius: 4px;
  overflow: hidden;
  margin-bottom: 2.5rem;
  background: #fff;
  box-shadow: 0 2px 20px rgba(0,0,0,0.06);
}

@media(max-width: 760px) {
  .hero-grid { grid-template-columns: 1fr; }
  .hero-sidebar { border-left: none !important; border-top: 1px solid var(--gris1); }
}

.hero-main {
  padding: 2rem;
  border-right: 1px solid var(--gris1);
}

.hero-eyebrow {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-bottom: 1rem;
}

.hero-numero {
  font-family: var(--font-impact);
  font-size: 48px;
  color: var(--gris1);
  line-height: 1;
}

.hero-titulo {
  font-family: var(--font-display);
  font-size: clamp(24px, 3.5vw, 40px);
  font-weight: 400;
  line-height: 1.1;
  margin-bottom: 14px;
  cursor: pointer;
  transition: color 0.2s;
}
.hero-titulo:hover { color: var(--rojo); }
.hero-titulo em { font-style: italic; color: var(--rojo); }

.hero-deck {
  font-size: 15px;
  line-height: 1.7;
  color: var(--texto-suave);
  margin-bottom: 14px;
}

.hero-firma {
  font-family: var(--font-mono);
  font-size: 10px;
  color: var(--gris3);
  letter-spacing: 0.06em;
  display: flex;
  align-items: center;
  gap: 8px;
  flex-wrap: wrap;
}
.firma-sep { color: var(--gris2); }

.leer-mas {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  margin-top: 14px;
  font-family: var(--font-mono);
  font-size: 10px;
  font-weight: 500;
  color: var(--rojo);
  letter-spacing: 0.1em;
  text-transform: uppercase;
  cursor: pointer;
  transition: gap 0.2s;
}
.leer-mas:hover { gap: 10px; text-decoration: none; }

/* ══════════════════
   SIDEBAR PORTADA
══════════════════ */
.hero-sidebar { padding: 1.5rem; display: flex; flex-direction: column; gap: 0; }

.sidebar-titulo {
  font-family: var(--font-mono);
  font-size: 9px;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: var(--gris3);
  padding-bottom: 8px;
  border-bottom: 2px solid var(--negro);
  margin-bottom: 12px;
}

.sidebar-nota {
  padding: 12px 0;
  border-bottom: 1px solid var(--gris1);
  cursor: pointer;
  transition: opacity 0.15s;
}
.sidebar-nota:last-child { border-bottom: none; }
.sidebar-nota:hover { opacity: 0.7; }
.sidebar-nota h4 {
  font-family: var(--font-display);
  font-size: 14px;
  line-height: 1.3;
  margin-bottom: 4px;
}
.sidebar-nota p {
  font-size: 11px;
  color: var(--texto-suave);
  line-height: 1.45;
}

/* ══════════════════
   GRILLA 3 COLUMNAS
══════════════════ */
.grid-3 {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 1px;
  background: var(--gris1);
  border: 1px solid var(--gris1);
  border-radius: 4px;
  overflow: hidden;
}
@media(max-width: 720px) { .grid-3 { grid-template-columns: 1fr; } }

.nota-card {
  background: #fff;
  padding: 1.5rem;
  cursor: pointer;
  transition: background 0.15s;
  display: flex;
  flex-direction: column;
}
.nota-card:hover { background: var(--crema); }
.nota-card h3 {
  font-family: var(--font-display);
  font-size: 17px;
  line-height: 1.25;
  margin-bottom: 8px;
  flex: 1;
  transition: color 0.15s;
}
.nota-card:hover h3 { color: var(--rojo); }
.nota-card p {
  font-size: 12px;
  color: var(--texto-suave);
  line-height: 1.5;
  margin-bottom: 10px;
}

/* ══════════════════
   SECCIONES ESPECIALES
══════════════════ */
.seccion-header {
  display: flex;
  align-items: flex-end;
  justify-content: space-between;
  margin-bottom: 1.5rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid var(--negro);
}

.seccion-header h2 {
  font-family: var(--font-display);
  font-size: clamp(20px, 3vw, 30px);
  font-weight: 400;
  line-height: 1;
}

.seccion-header .ver-mas {
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--rojo);
  cursor: pointer;
  transition: gap 0.2s;
  display: flex;
  align-items: center;
  gap: 5px;
}
.seccion-header .ver-mas:hover { gap: 8px; text-decoration: none; }

/* STRIP DE NOTAS HORIZONTAL */
.notas-strip {
  display: flex;
  flex-direction: column;
  gap: 0;
  border: 1px solid var(--gris1);
  border-radius: 4px;
  overflow: hidden;
  background: #fff;
}

.nota-strip-item {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  padding: 1rem 1.25rem;
  border-bottom: 1px solid var(--gris1);
  cursor: pointer;
  transition: background 0.15s;
}
.nota-strip-item:last-child { border-bottom: none; }
.nota-strip-item:hover { background: var(--crema); }

.strip-num {
  font-family: var(--font-impact);
  font-size: 28px;
  color: var(--gris1);
  line-height: 1;
  min-width: 32px;
  text-align: center;
  padding-top: 2px;
  transition: color 0.15s;
}
.nota-strip-item:hover .strip-num { color: var(--rojo); }

.strip-content { flex: 1; }
.strip-content h4 {
  font-family: var(--font-display);
  font-size: 15px;
  line-height: 1.3;
  margin-bottom: 4px;
}
.strip-content p {
  font-size: 12px;
  color: var(--texto-suave);
  line-height: 1.4;
}

/* ══════════════════
   FIRMA
══════════════════ */
.firma {
  font-family: var(--font-mono);
  font-size: 10px;
  color: var(--gris3);
  letter-spacing: 0.05em;
}

/* ══════════════════
   BANNER MANIFIESTO
══════════════════ */
.manifiesto {
  background: var(--negro);
  color: var(--blanco);
  padding: 3rem 2rem;
  text-align: center;
  position: relative;
  overflow: hidden;
  margin: 2.5rem 0;
  border-radius: 4px;
}

.manifiesto::before {
  content: 'MS';
  position: absolute;
  font-family: var(--font-impact);
  font-size: 280px;
  color: rgba(255,255,255,0.03);
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  pointer-events: none;
  letter-spacing: -10px;
}

.manifiesto h2 {
  font-family: var(--font-display);
  font-size: clamp(22px, 3vw, 34px);
  font-weight: 400;
  margin-bottom: 12px;
  position: relative;
}
.manifiesto h2 em { font-style: italic; color: var(--rojo); }

.manifiesto p {
  font-size: 15px;
  color: var(--gris3);
  max-width: 560px;
  margin: 0 auto 1.5rem;
  line-height: 1.7;
  position: relative;
}

.nl-form-dark {
  display: flex;
  gap: 0;
  max-width: 420px;
  margin: 0 auto;
  position: relative;
  box-shadow: 0 0 0 1px var(--rojo);
  border-radius: 2px;
  overflow: hidden;
}
.nl-form-dark input {
  flex: 1;
  background: rgba(255,255,255,0.06);
  border: none;
  padding: 12px 16px;
  font-size: 13px;
  font-family: var(--font-body);
  color: var(--blanco);
  outline: none;
}
.nl-form-dark input::placeholder { color: var(--gris3); }
.nl-form-dark button {
  background: var(--rojo);
  color: #fff;
  border: none;
  padding: 12px 20px;
  font-family: var(--font-mono);
  font-size: 10px;
  font-weight: 500;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  cursor: pointer;
  transition: background 0.15s;
  white-space: nowrap;
}
.nl-form-dark button:hover { background: var(--rojo-dark); }

/* ══════════════════
   PÁGINA DE NOTA
══════════════════ */
.art-wrap {
  max-width: 720px;
  margin: 0 auto;
  padding: 2.5rem 2rem;
}

.art-back {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--gris3);
  margin-bottom: 1.75rem;
  cursor: pointer;
  transition: color 0.15s;
}
.art-back:hover { color: var(--rojo); text-decoration: none; }

.art-titulo {
  font-family: var(--font-display);
  font-size: clamp(28px, 4.5vw, 50px);
  font-weight: 400;
  line-height: 1.08;
  margin-bottom: 16px;
}
.art-titulo em { font-style: italic; color: var(--rojo); }

.art-deck {
  font-size: 18px;
  line-height: 1.65;
  color: var(--texto-suave);
  font-style: italic;
  margin-bottom: 16px;
  border-bottom: 1px solid var(--gris1);
  padding-bottom: 16px;
}

.art-meta {
  display: flex;
  align-items: center;
  gap: 12px;
  margin-bottom: 2rem;
  flex-wrap: wrap;
}

.art-avatar {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background: var(--negro);
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: var(--font-impact);
  font-size: 14px;
  color: var(--rojo);
}

.art-cuerpo {
  font-size: 17px;
  line-height: 1.85;
  color: var(--texto);
}
.art-cuerpo p { margin-bottom: 1.35rem; }
.art-cuerpo h2 {
  font-family: var(--font-display);
  font-size: 24px;
  font-weight: 400;
  margin: 2.5rem 0 1rem;
  color: var(--negro);
}
.art-cuerpo blockquote {
  border-left: 3px solid var(--rojo);
  margin: 1.5rem 0;
  padding: 0.5rem 1.25rem;
  font-style: italic;
  font-size: 18px;
  color: var(--texto-suave);
}

.art-compartir {
  margin-top: 2.5rem;
  padding: 1.5rem;
  background: var(--crema);
  border-radius: 4px;
  display: flex;
  align-items: center;
  gap: 10px;
  flex-wrap: wrap;
}
.art-compartir span {
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--gris3);
  flex: 1;
}
.share-btn {
  padding: 8px 16px;
  border-radius: 2px;
  font-family: var(--font-mono);
  font-size: 10px;
  letter-spacing: 0.08em;
  font-weight: 500;
  text-transform: uppercase;
  border: none;
  cursor: pointer;
  transition: opacity 0.15s;
}
.share-btn:hover { opacity: 0.8; }
.s-tw { background: var(--negro); color: #fff; }
.s-wa { background: #25D366; color: #fff; }
.s-cp { background: var(--gris1); color: var(--texto); }

/* RELACIONADAS */
.art-relacionadas {
  margin-top: 2.5rem;
  padding-top: 1.5rem;
  border-top: 2px solid var(--negro);
}

/* ══════════════════
   SECCIÓN PAGE
══════════════════ */
.seccion-hero {
  background: var(--negro);
  color: var(--blanco);
  padding: 2.5rem 2rem;
  margin-bottom: 2rem;
  position: relative;
  overflow: hidden;
}
.seccion-hero::after {
  content: attr(data-nombre);
  position: absolute;
  right: -20px;
  top: 50%;
  transform: translateY(-50%);
  font-family: var(--font-impact);
  font-size: 120px;
  color: rgba(255,255,255,0.04);
  pointer-events: none;
  white-space: nowrap;
}
.seccion-hero-inner { max-width: var(--max-w); margin: 0 auto; }
.seccion-hero h1 {
  font-family: var(--font-display);
  font-size: clamp(30px, 5vw, 56px);
  font-weight: 400;
  line-height: 1;
  margin-top: 10px;
}
.seccion-hero p {
  font-size: 14px;
  color: var(--gris3);
  margin-top: 8px;
  font-family: var(--font-mono);
  letter-spacing: 0.05em;
}

/* ══════════════════
   NOSOTROS PAGE
══════════════════ */
.nosotros-wrap {
  max-width: 720px;
  margin: 0 auto;
  padding: 2.5rem 2rem;
}
.nosotros-wrap h1 {
  font-family: var(--font-display);
  font-size: clamp(32px, 5vw, 52px);
  font-weight: 400;
  line-height: 1.05;
  margin-bottom: 1.5rem;
}
.nosotros-wrap h2 {
  font-family: var(--font-display);
  font-size: 22px;
  font-weight: 400;
  margin: 2.5rem 0 0.75rem;
  border-bottom: 1px solid var(--gris1);
  padding-bottom: 8px;
}
.nosotros-wrap p {
  font-size: 15px;
  line-height: 1.8;
  color: var(--texto-suave);
  margin-bottom: 1rem;
}

.principio {
  background: var(--crema);
  border-left: 3px solid var(--rojo);
  padding: 1rem 1.25rem;
  margin: 0.75rem 0;
  border-radius: 0 3px 3px 0;
}
.principio strong {
  display: block;
  font-size: 13px;
  font-weight: 600;
  margin-bottom: 3px;
  color: var(--texto);
}
.principio span { font-size: 13px; color: var(--texto-suave); }

.team-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
  margin-top: 1rem;
}
@media(max-width: 500px) { .team-grid { grid-template-columns: 1fr; } }

.team-card {
  background: var(--crema);
  padding: 1.25rem;
  border-radius: 3px;
  border: 1px solid var(--gris1);
}
.team-avatar {
  width: 40px;
  height: 40px;
  background: var(--negro);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: var(--font-impact);
  font-size: 18px;
  color: var(--rojo);
  margin-bottom: 10px;
}
.team-nombre {
  font-weight: 600;
  font-size: 14px;
  margin-bottom: 2px;
}
.team-rol {
  font-family: var(--font-mono);
  font-size: 10px;
  color: var(--gris3);
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-bottom: 6px;
}
.team-desc { font-size: 12px; color: var(--texto-suave); line-height: 1.5; }
.team-partido {
  display: inline-block;
  margin-top: 6px;
  font-family: var(--font-mono);
  font-size: 9px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  padding: 2px 8px;
  border-radius: 100px;
  background: var(--negro);
  color: var(--gris3);
}

/* ══════════════════
   ADMIN BAR
══════════════════ */
.admin-bar {
  background: #1a0f0f;
  border-bottom: 1px solid var(--rojo);
  padding: 8px 2rem;
  display: flex;
  align-items: center;
  gap: 10px;
  flex-wrap: wrap;
}
.admin-bar .lbl {
  font-family: var(--font-mono);
  font-size: 9px;
  color: var(--rojo);
  letter-spacing: 0.15em;
  text-transform: uppercase;
  flex: 1;
}
.btn-admin {
  background: var(--rojo);
  color: #fff;
  border: none;
  padding: 7px 14px;
  font-family: var(--font-mono);
  font-size: 10px;
  font-weight: 500;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  border-radius: 2px;
  cursor: pointer;
  transition: background 0.15s;
  white-space: nowrap;
}
.btn-admin:hover { background: var(--rojo-dark); }
.btn-admin.oscuro { background: #2a2a2a; }
.btn-admin.oscuro:hover { background: #3a3a3a; }

/* ══════════════════
   EDITOR MODAL
══════════════════ */
.editor-overlay {
  display: none;
  position: fixed;
  inset: 0;
  background: rgba(0,0,0,0.75);
  z-index: 1000;
  align-items: flex-start;
  justify-content: center;
  padding: 1.5rem;
  overflow-y: auto;
  backdrop-filter: blur(3px);
}
.editor-overlay.abierto { display: flex; }

.editor-box {
  background: var(--blanco);
  max-width: 700px;
  width: 100%;
  border-radius: 6px;
  overflow: hidden;
  box-shadow: 0 30px 80px rgba(0,0,0,0.4);
  margin: auto;
  animation: slideUp 0.25s ease;
}

@keyframes slideUp {
  from { opacity: 0; transform: translateY(20px); }
  to   { opacity: 1; transform: translateY(0); }
}

.editor-header {
  background: var(--negro);
  padding: 1rem 1.5rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.editor-header h3 {
  color: var(--blanco);
  font-family: var(--font-mono);
  font-size: 12px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
}
.editor-close {
  color: var(--gris3);
  background: none;
  border: none;
  font-size: 20px;
  cursor: pointer;
  line-height: 1;
  padding: 2px 4px;
  transition: color 0.15s;
}
.editor-close:hover { color: var(--blanco); }

.editor-body {
  padding: 1.75rem;
  display: flex;
  flex-direction: column;
  gap: 16px;
  max-height: 75vh;
  overflow-y: auto;
}

.campo { display: flex; flex-direction: column; gap: 6px; }

.campo label {
  font-family: var(--font-mono);
  font-size: 9px;
  font-weight: 500;
  letter-spacing: 0.15em;
  text-transform: uppercase;
  color: var(--gris3);
}

.campo input,
.campo textarea,
.campo select {
  border: 1.5px solid var(--gris1);
  border-radius: 3px;
  padding: 10px 12px;
  font-size: 14px;
  font-family: var(--font-body);
  color: var(--texto);
  outline: none;
  transition: border-color 0.15s;
  background: #fff;
  width: 100%;
}
.campo input:focus,
.campo textarea:focus { border-color: var(--rojo); }

.campo textarea { resize: vertical; min-height: 140px; line-height: 1.65; }

.campo .hint {
  font-size: 11px;
  color: var(--gris3);
  line-height: 1.4;
}

.editor-footer {
  padding: 1rem 1.75rem;
  border-top: 1px solid var(--gris1);
  display: flex;
  gap: 10px;
  justify-content: flex-end;
  background: var(--crema);
}

.btn-cancelar {
  background: transparent;
  color: var(--texto-suave);
  border: 1.5px solid var(--gris1);
  padding: 10px 20px;
  font-family: var(--font-mono);
  font-size: 11px;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  border-radius: 2px;
  cursor: pointer;
}

.btn-publicar {
  background: var(--rojo);
  color: #fff;
  border: none;
  padding: 10px 24px;
  font-family: var(--font-mono);
  font-size: 11px;
  font-weight: 500;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  border-radius: 2px;
  cursor: pointer;
  transition: background 0.15s;
}
.btn-publicar:hover { background: var(--rojo-dark); }

/* ══════════════════
   TOAST
══════════════════ */
.toast {
  position: fixed;
  bottom: 1.5rem;
  right: 1.5rem;
  background: var(--negro);
  color: var(--blanco);
  padding: 12px 20px;
  border-radius: 4px;
  font-family: var(--font-mono);
  font-size: 11px;
  letter-spacing: 0.06em;
  z-index: 9999;
  opacity: 0;
  transform: translateY(8px);
  transition: all 0.3s;
  pointer-events: none;
  border-left: 3px solid var(--rojo);
  max-width: 300px;
}
.toast.visible { opacity: 1; transform: translateY(0); }

/* ══════════════════
   FOOTER
══════════════════ */
.site-footer {
  background: var(--negro);
  color: var(--gris3);
  padding: 2rem;
  margin-top: 3rem;
  border-top: 3px solid var(--rojo);
}
.footer-inner {
  max-width: var(--max-w);
  margin: 0 auto;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 2rem;
}
@media(max-width: 600px) { .footer-inner { grid-template-columns: 1fr; gap: 1.5rem; } }

.footer-col-nombre {
  font-family: var(--font-impact);
  font-size: 32px;
  color: var(--blanco);
  line-height: 1;
  margin-bottom: 8px;
}
.footer-col-nombre span { color: var(--rojo); }
.footer-desc {
  font-size: 12px;
  line-height: 1.6;
  color: var(--gris3);
}

.footer-titulo {
  font-family: var(--font-mono);
  font-size: 9px;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--gris2);
  margin-bottom: 12px;
}
.footer-links-list {
  display: flex;
  flex-direction: column;
  gap: 8px;
}
.footer-links-list a {
  font-size: 13px;
  color: var(--gris3);
  transition: color 0.15s;
}
.footer-links-list a:hover { color: var(--rojo); text-decoration: none; }

.footer-bottom {
  max-width: var(--max-w);
  margin: 1.5rem auto 0;
  padding-top: 1.5rem;
  border-top: 1px solid #1e1e1e;
  font-family: var(--font-mono);
  font-size: 9px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: #333;
  text-align: center;
}

/* ══════════════════
   EMPTY STATE
══════════════════ */
.empty-state {
  padding: 3rem 2rem;
  text-align: center;
  border: 1.5px dashed var(--gris1);
  border-radius: 4px;
  color: var(--gris3);
  font-family: var(--font-mono);
  font-size: 11px;
  letter-spacing: 0.08em;
}

/* ══════════════════
   RESPONSIVE
══════════════════ */
@media(max-width: 600px) {
  .contenedor { padding: 1.5rem 1.25rem; }
  .site-header { padding: 0 1.25rem; }
  .admin-bar { padding: 8px 1.25rem; }
  .art-wrap, .nosotros-wrap { padding: 1.5rem 1.25rem; }
  .seccion-hero { padding: 2rem 1.25rem; }
}
