% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 1 — Eksplorasi Awal dan Profil Data Transaksi
% ---------------------------------------------------
% Nama : Aina Wanda Rahmaliya
% NIM : 2510514004
% Parameter: N=4,a=0,b=4,k=5,theta0=20,alpha=0,005
% Tanggal: 2026-4-22
% =====================================================

% Parameter personalisasi
N = 4; a = 0; b = 4; K = 5;
A = [4, 6, 8, 11, 14, 17, 19];
B = [7, 9, 11, 14, 16, 22];
C = [5, 11, 14, 15, 21, 24];
U = 4:24;

%A ∪ B ∪ C
union_AB = union(A, B);
union_ABC = union(union_AB, C);
fprintf('anggota A ∪ B ∪ C: \n');
disp(union_ABC);
fprintf('\n');

%A ∩ B ∩ C
intersection_AB = intersect(A, B);
intersection_ABC = intersect(intersection_AB, C);
fprintf('anggota A ∩ B ∩ C: \n');
disp(intersection_ABC);
fprintf('\n');

%(A ∪ B) ∩ C′
complement_C = setdiff(U, C); 
intersection_AB_complement_C = intersect(union_AB, complement_C);  
fprintf('anggota (A ∪ B) ∩ C′: \n');
disp(intersection_AB_complement_C);
fprintf('\n');

%(A ∪ B) − (A ∩ B)
%step pertama cari dulu A ∪ B
union_AB = union(A, B);  % A ∪ B
disp('anggota A ∪ B:');
disp(union_AB);

%step kedua baru cari A ∩ B
intersection_AB = intersect(A, B);  % A ∩ B
disp('anggota A ∩ B:');
disp(intersection_AB);

%step akhir baru cari selisih (A ∪ B) − (A ∩ B)
difference_AB_intersection = setdiff(union_AB, intersection_AB);  % (A ∪ B) − (A ∩ B)
disp('anggota (A ∪ B) − (A ∩ B):');
disp(difference_AB_intersection);

%mencari volume pembelian dari pendapatan total jika Rp(K * 100 + a + b)
%fungsi f(x)
syms x y;
f = K * x + (a + b);

%menentukan invers f⁻¹(x)
f_inv = solve(f == y, x);
fprintf('f(x)^-1 : \n');
disp(f_inv);

% Verifikasi dengan substitusi dan solve
pendapatan_total = K * 100 + a + b; 
x_value = subs(f_inv, y, pendapatan_total);
fprintf('jika pendapatan total Rp(K * 100 + a + b) ribu, maka volume pembelian x = %.2f\n', double(x_value));
