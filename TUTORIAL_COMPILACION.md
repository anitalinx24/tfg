# Tutorial: Cómo descargar y generar el PDF del TFG

## 📋 Requisitos previos

Para compilar el documento LaTeX y generar el PDF, necesitas tener instalado:

- **LaTeX** (MikTeX, TeX Live, o MacTeX según tu sistema operativo)
- **Git** (para clonar el repositorio)
- **Un editor de texto** (VS Code, TeXstudio, o cualquier editor)

---

## 🔽 Método 1: Descargar desde GitHub (Recomendado)

### Paso 1: Acceder al repositorio
1. Ve a: **https://github.com/anitalinx24/tfg**
2. Verás todos los archivos del proyecto

### Paso 2: Descargar el proyecto
**Opción A - Descargar ZIP:**
1. Click en el botón verde **"< > Code"**
2. Selecciona **"Download ZIP"**
3. Extrae el archivo ZIP en tu computadora

**Opción B - Clonar con Git:**
```bash
git clone https://github.com/anitalinx24/tfg.git
cd tfg
```

---

## 📝 Método 2: Compilar el PDF

### Paso 1: Abrir terminal en la carpeta del proyecto
- **Windows**: Shift + Click derecho → "Abrir ventana de PowerShell aquí"
- **Mac/Linux**: Abrir terminal y navegar a la carpeta

### Paso 2: Compilar el documento LaTeX
```bash
# Compilar el documento principal
pdflatex tfg.tex

# Generar bibliografía
bibtex tfg

# Compilar nuevamente para referencias cruzadas
pdflatex tfg.tex
pdflatex tfg.tex
```

### Paso 3: Encontrar el PDF generado
El archivo **`tfg.pdf`** se generará en la misma carpeta.

---

## 🎯 Método 3: Compilación automática (Un solo comando)

Si tienes `latexmk` instalado (viene con la mayoría de distribuciones LaTeX):

```bash
latexmk -pdf tfg.tex
```

Este comando:
- Compila automáticamente
- Genera la bibliografía
- Resuelve todas las referencias
- Produce el PDF final

---

## 🛠️ Solución de problemas comunes

### Error: "Command not found"
**Problema**: No tienes LaTeX instalado
**Solución**: 
- **Windows**: Instala [MikTeX](https://miktex.org/download)
- **Mac**: Instala [MacTeX](https://www.tug.org/mactex/)
- **Linux**: `sudo apt-get install texlive-full` (Ubuntu/Debian)

### Error: "File not found"
**Problema**: Faltan archivos o estás en la carpeta incorrecta
**Solución**: 
1. Verifica que estés en la carpeta correcta del proyecto
2. Asegúrate de que el archivo `tfg.tex` esté presente
3. Verifica que todas las carpetas de capítulos existan

### Error en compilación: "Missing packages"
**Problema**: Faltan paquetes LaTeX
**Solución**:
- **MikTeX**: Se instalarán automáticamente
- **TeX Live**: `tlmgr install [nombre-del-paquete]`

### Referencias o bibliografía no aparecen
**Problema**: Necesitas múltiples compilaciones
**Solución**:
```bash
pdflatex tfg.tex
bibtex tfg
pdflatex tfg.tex
pdflatex tfg.tex
```

---

## 📊 Estructura del proyecto

```
tfg/
├── tfg.tex                    # Documento principal
├── bibliography.bib           # Referencias bibliográficas
├── capitulo_01/              # Introducción
├── capitulo_02/              # Marco teórico
├── capitulo_03/              # Tecnologías utilizadas
├── capitulo_04/              # Metodología y desarrollo
├── capitulo_05/              # Resultados
├── capitulo_06/              # Discusión
├── anexos/                   # Anexos
├── portada_y_ficha_catalografica/
├── hoja_aprobacion/
├── dedicatoria/
├── agradecimientos/
├── resumen/
└── abstract/
```

---

## 🚀 Compilación rápida con script

### Para Windows (PowerShell):
```powershell
# Guardar como compile.ps1
pdflatex tfg.tex
bibtex tfg
pdflatex tfg.tex
pdflatex tfg.tex
Write-Host "PDF generado: tfg.pdf" -ForegroundColor Green
```

### Para Mac/Linux (Bash):
```bash
#!/bin/bash
# Guardar como compile.sh
pdflatex tfg.tex
bibtex tfg
pdflatex tfg.tex
pdflatex tfg.tex
echo "PDF generado: tfg.pdf"
```

---

## 📱 Editores recomendados

### VS Code
1. Instala la extensión "LaTeX Workshop"
2. Abre la carpeta del proyecto
3. Abre `tfg.tex`
4. Ctrl+Alt+B para compilar

### TeXstudio
1. Abre `tfg.tex`
2. F5 para compilar
3. F1 para ver el PDF

### Overleaf (Online)
1. Sube todos los archivos a un nuevo proyecto
2. Set `tfg.tex` como documento principal
3. Compila automáticamente

---

## ✅ Verificación final

Después de la compilación exitosa deberías tener:
- **tfg.pdf** (135 páginas aproximadamente)
- El documento incluye todos los capítulos
- Las imágenes se muestran correctamente
- La bibliografía aparece al final
- Los enlaces internos funcionan

---

## 📞 Ayuda adicional

Si tienes problemas:
1. Verifica que todos los archivos se descargaron correctamente
2. Revisa que tienes una instalación completa de LaTeX
3. Consulta los logs de error en `tfg.log`
4. Compila paso a paso para identificar errores específicos

**¡El PDF final contiene tu completo Trabajo de Fin de Grado sobre "Sistema de rastreo e identificación para motocicletas empleando tecnología IoT"!** 🎓