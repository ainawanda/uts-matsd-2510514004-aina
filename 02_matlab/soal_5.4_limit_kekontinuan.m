% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 4(e) - Segmentasi Pelanggan dan komposisi fungsi harga
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-23
% ========================================================
syms x K a

%parameter
K = 5;      
a = 0;      
p = 2*K;  
q = K*(2 - a);

%definisikan C(x) secara piecewise simbolik
C(x) = piecewise(...
    x < K, (x^2 - K^2)/(x - K), ...  %bagian kiri
    x == K, p, ...                   %titik tengah
    x > K, a*x + q);                 %bagian kanan

%plot di interval [0, 2K]
fplot(C, [0, 2*K], 'LineWidth', 1.5)
hold on

%garis vertikal di x = K
xline(K, 'k--', 'LineWidth', 0.7)

xlabel('x')
ylabel('C(x)')
title('Fungsi Biaya C(x) yang Kontinu di x = K')
grid on
hold off