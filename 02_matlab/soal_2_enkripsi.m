% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 2 - Enkripsi Citra Logo Toko dengan Invers Matriks 3x3
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0.005
% Tanggal: 2026-4-26
% =====================================================

%parameter personalisasi
a = 0;
b = 4;

%matriks A
A = [a+1, b, 2; 1, a+2, b; b, 1, a+3];

%matriks P
N = 4;
P = [120, (50 + N), 200; 80, a+2, (10+ N); (30 + N), 90, 170];

%menampilkan matriks A dan P
disp('matriks A :');
disp(A);
disp('matriks P :');
disp(P);

%menghitung determinan
detA = det(A);
fprintf('det(A) = %.4f\n', detA);

%matriks kofaktor
n = size(A, 1);
C = zeros(n);

%menghitung matriks kofaktor
for i = 1:n
    for j = 1:n
        sub = A;
        sub(i,:) = [];
        sub(:,j) = []; 
        Mij = det(sub);
        C(i,j) = ((-1)^(i+j)) * Mij;
    end
end

%matriks adjoin
AdjA = C';
disp('(Adj(A)):');
disp(AdjA);

%matriks invers dengan adjoin
A_inv = AdjA / detA;
disp('A^-1 :');
disp(vpa(A_inv, 6));

%verifikasi inv
A_inv_matlab = inv(A);
disp('A^-1 (MATLAB):');
disp(A_inv_matlab);

%menghitung Norma Error Frobenius
frobenius_error = norm(A_inv - A_inv_matlab, 'fro');
fprintf('norma error frobenius: %.4e\n', frobenius_error);

% Verifikasi Norma Error
if frobenius_error < 1e-10
    disp('norma error frobenius memenuhi kriteria: < 1e-10');
else
    disp('norma error frobenius tidak memenuhi kriteria.');
end

%enkripsi E = A * P
E = A * P;
disp('hasil enkripsi (E):');
disp(E);

figure;

%menampilkan gambar P dan E
subplot(1, 2, 1);
imshow(P, []);  %[] untuk menyesuaikan skala warna otomatis
title('blok piksel asli P');
subplot(1, 2, 2);
imshow(E, []);  %[] untuk menyesuaikan skala warna otomatis
title('blok piksel enkripsi E');