# Guía: Solucionar Imágenes de Apple

El CDN de Apple bloquea hotlinking desde localhost. Aquí hay **3 soluciones**:

## ✅ Solución 1: Usar servidor HTTP (Más fácil)

Las imágenes **SÍ CARGARÁN** si usas un servidor HTTP en vez de abrir el archivo directamente.

### Con Python:
```bash
cd "C:\Users\progr\Documents\PCMAC WEBSITE"
python -m http.server 8000
```

Luego abre: `http://localhost:8000` ✅ Las imágenes deberían cargar

### Con Node.js/npx:
```bash
cd "C:\Users\progr\Documents\PCMAC WEBSITE"
npx serve
```

### Con VS Code Live Server:
1. Instalar extensión "Live Server"
2. Click derecho en `index.html` → "Open with Live Server"
3. ✅ Las imágenes cargan automáticamente

---

## ✅ Solución 2: Descargar imágenes manualmente

### Paso 1: Ir a Apple.com
Visita estos links en tu navegador:

1. **MacBook Pro:**
   https://www.apple.com/macbook-pro/
   → Click derecho en imagen → "Guardar imagen como..."
   → Guardar en: `assets/images/hero/macbook-pro.jpg`

2. **iPhone 16 Pro:**
   https://www.apple.com/iphone/
   → Guardar en: `assets/images/products/iphone-16-pro.png`

3. **iPad Pro:**
   https://www.apple.com/ipad-pro/
   → Guardar en: `assets/images/products/ipad-pro.png`

4. **Apple Watch:**
   https://www.apple.com/apple-watch/
   → Guardar en: `assets/images/products/apple-watch.jpg`

### Paso 2: Actualizar HTML
Luego actualiza las rutas en `index.html`:

```html
<!-- Antes -->
<img src="https://www.apple.com/v/macbook-pro/..." alt="MacBook Pro">

<!-- Después -->
<img src="assets/images/hero/macbook-pro.jpg" alt="MacBook Pro">
```

---

## ✅ Solución 3: Usar imágenes del sitio actual PCMAC

Puedes usar imágenes que ya están en pcmac.co:

```html
<!-- Hero -->
<img src="https://pcmac.co/wp-content/uploads/2024/08/macbook-pro.jpg" alt="MacBook Pro">
```

---

## 🎯 Recomendación

**Usa Solución 1** (servidor HTTP) - es la más rápida y las imágenes de Apple cargarán perfectamente.

Si vas a deploy en producción, entonces descarga las imágenes manualmente (Solución 2) para tener control total.

---

## 📝 Comandos rápidos

```bash
# Opción A: Python server
python -m http.server 8000
# → http://localhost:8000

# Opción B: Node serve
npx serve
# → http://localhost:3000

# Opción C: PHP (si tienes XAMPP)
php -S localhost:8000
```

Después de ejecutar cualquiera, las imágenes de Apple CDN deberían cargar correctamente.
