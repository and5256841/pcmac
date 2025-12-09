# Script para descargar imagenes de Apple CDN

$baseDir = "assets\images"

# Crear directorios
New-Item -ItemType Directory -Force -Path "$baseDir\products" | Out-Null
New-Item -ItemType Directory -Force -Path "$baseDir\hero" | Out-Null

Write-Host "Descargando imagenes de Apple..."

# Hero - MacBook Pro
Write-Host "MacBook Pro..."
Invoke-WebRequest -Uri "https://www.apple.com/v/macbook-pro/ak/images/overview/hero/intro__ewz1ro7xs14y_large.jpg" -OutFile "$baseDir\hero\macbook-pro.jpg"

# Products - iPhone
Write-Host "iPhone 16 Pro..."
Invoke-WebRequest -Uri "https://www.apple.com/v/iphone/home/bx/images/overview/select/iphone_16_pro__c5l7d1nbxsi2_large.png" -OutFile "$baseDir\products\iphone-16-pro.png"

# Products - MacBook Pro
Write-Host "MacBook Pro M4..."
Invoke-WebRequest -Uri "https://www.apple.com/v/macbook-pro/ak/images/overview/hero/intro__ewz1ro7xs14y_large.jpg" -OutFile "$baseDir\products\macbook-pro-m4.jpg"

# Products - iPad Pro
Write-Host "iPad Pro..."
Invoke-WebRequest -Uri "https://www.apple.com/v/ipad-pro/ar/images/overview/hero/hero_ipad_pro__bpt7a9d8sh42_large.png" -OutFile "$baseDir\products\ipad-pro.png"

# Products - Apple Watch
Write-Host "Apple Watch..."
Invoke-WebRequest -Uri "https://www.apple.com/v/apple-watch-series-10/d/images/overview/design/design_case__fi9yw1svow2e_large.jpg" -OutFile "$baseDir\products\apple-watch.jpg"

Write-Host "Imagenes descargadas en: $baseDir"
