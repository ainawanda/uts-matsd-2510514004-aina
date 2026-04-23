% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 4(e) - Segmentasi Pelanggan dan komposisi fungsi harga
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-23
% =====================================================

z0 = 1.986 + 0.232i;  
z1 = -1.200 + 1.598i;  
z2 = -0.800 - 1.832i;  

Z = [z0; z1; z2];

%plot di bidang Argand
figure(1)
plot(real(Z), imag(Z), 'bo', 'LineWidth', 2, 'MarkerSize', 8)
hold on
plot(0, 0, 'kx', 'MarkerSize', 10) % pusat (0,0)
xlabel('Re')
ylabel('Im')
grid on
axis equal
title('Ketiga Akar Kubik di Bidang Argand')

%hubungkan titik ke segitiga
plot([real(z0), real(z1)], [imag(z0), imag(z1)], 'b-')
plot([real(z1), real(z2)], [imag(z1), imag(z2)], 'b-')
plot([real(z2), real(z0)], [imag(z2), imag(z0)], 'b-')

%menambahkan lingkaran jari-jari
t = 0:0.01:2*pi;
circle = 2*(cos(t) + 1i*sin(t));
plot(real(circle), imag(circle), 'r:', 'LineWidth', 1)
legend('Akar z_0','Akar z_1','Akar z_2','lingkaran |z| = 2')
hold off