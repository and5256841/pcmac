# PCMAC B2B Website - Desarrollo Local

Apple Business Partner website con brand compliance certificado.

## Inicio rápido

### Opción 1: Abrir directamente
```bash
# Abrir index.html en el navegador
start index.html
```

### Opción 2: Live Server (Recomendado)

Si tienes VS Code instalado:

1. Instalar extensión **Live Server**
2. Click derecho en `index.html` → "Open with Live Server"
3. El sitio abrirá en `http://localhost:5500`

### Opción 3: Python server

```bash
# Python 3
python -m http.server 8000

# Navegar a http://localhost:8000
```

### Opción 4: Node.js server

```bash
npx serve
```

## Estructura del proyecto

```
PCMAC WEBSITE/
├── index.html              # Sitio principal (Apple-compliant)
├── frontend_pcmac.html     # Versión anterior (referencia)
├── CLAUDE.md              # Contexto para Claude Code
└── README.pdf             # Documentación completa del proyecto
```

## Cambios Apple-compliant implementados

### ✅ Brand Voice
- Headline: "Apple para empresas" (no "Tu Experto de Confianza")
- CTAs: "Solicitar información" (no "Cotizar Ahora")
- Microcopy factual, no emocional
- Credentials-first messaging

### ✅ Visual Design
- Solo colores Apple (#0071E3, grises neutros)
- Sin gradientes de texto
- Tipografía: Inter / SF Pro Display
- White space generoso

### ✅ Contenido
- Headlines cortos: "Mac. iPad. iPhone."
- Números reales: "152,000+ dispositivos"
- Certificaciones oficiales destacadas
- Tono profesional, distante (como Apple)

## Próximos pasos

### Fase actual: MVP HTML
- [x] Correcciones Apple brand voice
- [x] Diseño visual Apple-aligned
- [ ] Pruebas mobile
- [ ] Integración HubSpot (formulario)
- [ ] Performance optimization

### Siguiente fase: Next.js
Ver `CLAUDE.md` para roadmap completo.

## Testing

### Checklist pre-deploy:
- [ ] Todas las imágenes cargan (Apple CDN)
- [ ] Formulario envía a HubSpot
- [ ] Mobile responsive
- [ ] Load time < 2s
- [ ] Links externos funcionan
- [ ] WhatsApp button funcional

### Brand compliance check:
- [ ] Sin frases banned (ver CLAUDE.md)
- [ ] Solo colores Apple palette
- [ ] Sin gradientes visuales
- [ ] Tono factual, no emocional
- [ ] Credentials destacadas

## Contacto HubSpot

Formulario envía a: `https://hola.pcmac.co/asesoriagratuita`

## Recursos

- **Website actual:** https://pcmac.co
- **HubSpot meetings:** https://meetings.hubspot.com/pcmac
- **WhatsApp:** +57 315 782 8266
- **Documentación completa:** Ver `README.pdf` y `CLAUDE.md`

## Notas importantes

1. **Apple CDN images:** Todas las imágenes de productos vienen de Apple's CDN oficial
2. **No prices shown:** Modelo B2B - todo va a cotización
3. **HubSpot integration:** Preservar flujo CRM existente
4. **Mobile-first:** Colombia tiene alto uso mobile
5. **Performance:** Target < 2s load time (como sitios Apple)

---

**Apple Business Partner · Authorized Service Provider**
*26 años en Colombia*
