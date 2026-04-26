% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 6(e) - Optimasi Harga Produk Via Gradient Descent Manual
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-26
% =====================================================
alpha = 0.005;  %learning rate normal
num_iter = 500;  %jumlah iterasi
x0 = 1;  % Titik awal (x₀)
f = @(x) -(0+1)*x.^3 + (4+5)*5*x.^2 + 100*x - (5^2*10);  % Fungsi
df = @(x) -3*(0+1)*x.^2 + 2*(4+5)*5*x + 100;  % Turunan pertama

%inisialisasi nilai x dan π(x) untuk setiap iterasi
x_values = zeros(num_iter, 1);
pi_values = zeros(num_iter, 1);
x_values(1) = x0;
pi_values(1) = f(x0);

%menjalankan gradient descent
for k = 1:num_iter-1
    x_values(k+1) = x_values(k) - alpha * df(x_values(k));
    pi_values(k+1) = f(x_values(k+1));
end

%solusi analitik (dari turunan pertama, mencari titik ekstrem)
syms x;
sol_analitik = solve(df(x) == 0, x);  %solusi analitik untuk f'(x) = 0
sol_analitik_val = double(sol_analitik);  %mengubah ke nilai numerik

%plot grafik konvergensi π(x_k) vs k
figure;
plot(1:num_iter, pi_values, '-o', 'DisplayName', 'Konvergensi π(x_k)');
hold on;

%plot solusi analitik
plot([1 num_iter], [f(sol_analitik_val) f(sol_analitik_val)], '--r', 'DisplayName', 'Solusi Analitik');
xlabel('Iterasi (k)');
ylabel('π(x_k)');
title('grafik konvergensi π(x_k) dengan Gradient Descent');
legend('show');
grid on;

%informasi titik awal, titik akhir, dan solusi analitik
fprintf('titik awal x₀ = %.4f\n', x0);
fprintf('titik akhir x* = %.4f\n', x_values(end));
fprintf('solusi analitik x* = %.4f\n', sol_analitik_val);