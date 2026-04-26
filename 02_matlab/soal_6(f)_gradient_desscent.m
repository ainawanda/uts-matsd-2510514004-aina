% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 6(f) - Optimasi Harga Produk Via Gradient Descent Manual
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-26
% =====================================================
alpha = 0.005;  %learning rate normal
alpha_large = 10 * alpha;  %learning rate terlalu besar
alpha_small = 0.1 * alpha;  %learning rate terlalu kecil
num_iter = 500;  %jumlah iterasi
x0 = 1;  %titik awal (x₀)

%fungsi dan turunan pertama (derivatif pertama)
f = @(x) -(0+1)*x.^3 + (4+5)*5*x.^2 + 100*x - (5^2*10);  % Fungsi
df = @(x) -3*(0+1)*x.^2 + 2*(4+5)*5*x + 100;  % Turunan pertama

%inisialisasi nilai x dan π(x) untuk setiap iterasi
x_values = zeros(num_iter, 1);
pi_values = zeros(num_iter, 1);
x_values(1) = x0;
pi_values(1) = f(x0);

x_values_large = zeros(num_iter, 1);
pi_values_large = zeros(num_iter, 1);
x_values_large(1) = x0;
pi_values_large(1) = f(x0);

x_values_small = zeros(num_iter, 1);
pi_values_small = zeros(num_iter, 1);
x_values_small(1) = x0;
pi_values_small(1) = f(x0);

%menjalankan Gradient Descent dengan learning rate normal
for k = 1:num_iter-1
    x_values(k+1) = x_values(k) - alpha * df(x_values(k));
    pi_values(k+1) = f(x_values(k+1));
end

%menjalankan Gradient Descent dengan learning rate yang lebih besar
for k = 1:num_iter-1
    x_values_large(k+1) = x_values_large(k) - alpha_large * df(x_values_large(k));
    pi_values_large(k+1) = f(x_values_large(k+1));
end

%menalankan Gradient Descent dengan learning rate yang lebih kecil
for k = 1:num_iter-1
    x_values_small(k+1) = x_values_small(k) - alpha_small * df(x_values_small(k));
    pi_values_small(k+1) = f(x_values_small(k+1));
end

%plot ketiga kurva dalam satu figure
figure;
plot(1:num_iter, pi_values, '-o', 'DisplayName', 'alpha Normal');
hold on;
plot(1:num_iter, pi_values_large, '-x', 'DisplayName', 'alpha Besar');
plot(1:num_iter, pi_values_small, '-s', 'DisplayName', 'alpha Kecil');
xlabel('Iterasi (k)');
ylabel('π(x_k)');
title('konvergensi π(x_k) dengan Learning Rate yang berbeda');
legend('show');
grid on;
