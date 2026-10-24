% Simulación de PSF para una apertura circular ideal
clear; clc; close all;

% Definir la malla espacial
N = 512; % Resolución de la matriz
x = linspace(-1, 1, N);
[X, Y] = meshgrid(x, x);
r = sqrt(X.^2 + Y.^2);

% Crear la pupila circular del telescopio (Apertura)
aperture = double(r <= 0.5); 

% Calcular la PSF usando FFT2 (Transformada de Fourier 2D)
% fftshift centra las frecuencias bajas en el medio de la imagen
E_field = fftshift(fft2(aperture));
psf = abs(E_field).^2;

% Normalizar la PSF
psf = psf / max(psf(:));

% Graficar resultados
figure('Name', 'Análisis de Calidad Óptica - PSF', 'Color', 'w');
subplot(1,2,1); 
imshow(aperture); 
title('Apertura del Telescopio');

subplot(1,2,2); 
% Usamos una escala logarítmica (o potencia) para visualizar los anillos tenues de difracción
imshow(psf.^0.1, []); 
colormap(hot); 
title('Point Spread Function (PSF)');