 % =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 7.c - Forecasting Penjualan dengan barisan, Deret, dan Notasi Sigma
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-26
% =====================================================
K = 5; 
a = 0; 
n = 1:12;
S = 50 + (K .* n) + ((-1).^n) .* (a + 1);

T1 = sum(S);  
T2 = sum(S.^2); 

disp(['total penjualan (T1): ', num2str(T1)]);
disp(['jumlah kuadrat penjualan (T2): ', num2str(T2)]);