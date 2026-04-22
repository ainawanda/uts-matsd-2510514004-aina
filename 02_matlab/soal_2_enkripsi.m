% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 2 - Enkripsi Citra Logo Toko dengan Invers Matriks 3x3
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM  : 2510514004
% Parameter: N=4, a=0, b=4, k=5, theta0=20, alpha=0.005
% Tanggal: 2026-4-22
% =====================================================

%parameter personalisasi
a = 0;
b = 4;

A = [a+1, b, 2;1, a+2, b; b, 1, a+3];

disp('Matriks A:');
disp(A);
detA = det(A);
fprintf('det(A) = %.4f\n', detA);

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

%matriks adj
AdjA = C';
disp('matriks Adjoin (Adj(A)):');
disp(AdjA);

%invers dengan adjoin
A_inv_manual = AdjA / detA;
disp('A^-1 :');
disp(vpa(A_inv_manual, 6)); 

%hitung norma error Frobenius
A_inv_matlab = inv(A);
frobenius_error = norm(A_inv_manual - A_inv_matlab, 'fro');
fprintf('norma error frobenius: %.4e\n', frobenius_error);

% verifikasi
if frobenius_error < 1e-10
    disp('Norma error Frobenius memenuhi kriteria: < 1e-10');
else
    disp('Norma error Frobenius tidak memenuhi kriteria.');
end
