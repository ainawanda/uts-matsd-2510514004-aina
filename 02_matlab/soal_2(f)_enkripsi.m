% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 2 - Enkripsi Citra Logo Toko dengan Invers Matriks 3x3
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM  : 2510514004
% Parameter: N=4, a=0, b=4, k=5, theta0=20, alpha=0.005
% Tanggal: 2026-4-22
% =====================================================
% Parameter personalisasi
N = 4; a = 0; b = 4; K = 5;
theta0 = 20; %derajat
alpha_lr = 0.005;

%matriks A (untuk enkripsi)
A = [a+1, b, a; b, a+2, b; a, b, a+3];

%matriks P (blok piksel asli)
P = [120, (50 + N), 200; 80, a+2, 190; (30 + N), 90, 170];

%enkripsi E = A * P
E = A * P;

%visualisasi citra grayscale
figure;

%mnampilkan gambar P (blok piksel asli)
subplot(1, 2, 1);
imshow(P, []);  %[] untuk menyesuaikan skala warna otomatis
title('Blok Piksel Asli P');

%menampilkan gambar E (enkripsi)
subplot(1, 2, 2);
imshow(E, []);  %[] untuk menyesuaikan skala warna otomatis
title('Blok Piksel Enkripsi E');
