@echo off
echo Iniciando compilacion automatica...
echo Presiona Ctrl+C para detener
:loop
echo Compilando tfg.tex...
pdflatex -interaction=nonstopmode tfg.tex
timeout /t 5 /nobreak >nul
goto loop