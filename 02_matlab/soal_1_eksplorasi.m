% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 1 — Eksplorasi Awal dan Profil Data Transaksi
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0,005
% Tanggal: <YYYY-MM-DD>
% =====================================================
clc; clear; close all;
% Parameter personalisasi
N = 4; a = 0; b = 4; K = 5;
theta0 = 20;% derajat
alpha_lr = 0.005;

a = 0;
K = 5;
b = 4;
D = zeros(1, 7); 
for i = 1:7
    D(i) = 20 + (K * i) + mod(a * i, 7) - mod(b * i, 5);
end

%verifikasi pakai fungsi MATLAB
mean_D = mean(D);  
median_D = median(D);  
mode_D = mode(D);  
range_D = range(D);  
std_D = std(D, 1);

%
disp('hasil verifikasi MATLAB:');
disp(['rata-rata (mean): ', num2str(mean_D)]);
disp(['median: ', num2str(median_D)]);
disp(['modus : ', num2str(mode_D)]);
disp(['rentang (range): ', num2str(range_D)]);
disp(['standar deviasi (Standard Deviation): ', num2str(std_D)]);

%diagram batang penjualan per toko dan garis rata-rata
figure;  
bar(D);  
hold on;  
yline(mean_D, 'r', 'garis rata-rata', 'LineWidth', 2);

%label dan judul diagram
xlabel('toko (i)', 'FontSize', 12);
ylabel('penjualan (dalam juta)', 'FontSize', 12);
title('diagram batang penjualan rer toko', 'FontSize', 14);

%menampilkan hasil plot
hold off;
