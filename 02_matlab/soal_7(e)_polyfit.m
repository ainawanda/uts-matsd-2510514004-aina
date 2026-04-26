% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 7.e - Forecasting Penjualan dengan barisan, Deret, dan Notasi Sigma
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-26
% =====================================================
S = [54, 61, 64, 71, 74, 81, 84, 91, 94, 101, 104, 111];
t = 1:12;

p = polyfit(t, S, 1); 

t_pred = 13:18; 
S_pred = polyval(p, t_pred);

figure;
hold on;

plot(t, S, 'bo', 'MarkerFaceColor', 'b', 'DisplayName', 'Data Historis');
plot(t, polyval(p, t), 'r--', 'DisplayName', 'Garis Tren');
plot(t_pred, S_pred, 'g^', 'MarkerFaceColor', 'g', 'DisplayName', 'Prediksi 6 Bulan');

xlabel('bulan');
ylabel('penjualan (juta rupiah)');
legend('show');
title('prediksi penjualan dengan tren linear');
hold off;