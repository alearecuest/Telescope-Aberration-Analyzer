# Telescope Aberration Analyzer

Este repositorio contiene herramientas en MATLAB para el análisis de calidad de imagen en cargas útiles ópticas. 

El script principal, `psf_simulator.m`, calcula el patrón de difracción ideal (Airy Disk) de un telescopio con apertura circular mediante la Transformada Rápida de Fourier (FFT2). Esta base permite escalar el modelo para incluir aberraciones geométricas mediante polinomios de Zernike, facilitando la calibración y evaluación del rendimiento óptico.

## Uso
Ejecuta `psf_simulator.m` en MATLAB para visualizar la apertura y la Point Spread Function (PSF) normalizada en escala logarítmica.
