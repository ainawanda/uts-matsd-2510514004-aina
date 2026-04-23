 % =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 5.1 - Konvergensi Customer Lifetime Value dan Kekontinuan Biaya
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-23
% =====================================================
syms x K real
K = 5;

%L1
f1 = (x^2 - K^2)/(x - K);
L1 = limit(f1, x, K)

%L2
f2 = (sqrt(x + (K+1)^2) - (K+1)) / x;
L2 = limit(f2, x, 0)

%L3
a = 0;
b = 4;
K = 5;
f3 = ((a+2)*x^3 + b*x + 7) / (x^3 - x + K);
L3 = limit(f3, x, inf)