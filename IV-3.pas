Program HITUNG_RATA_1;
var k, n, bil : integer;
    Jumlah : longint;
    RATA : real;
    A : array [0..100] of integer;

procedure InputData(var A:array of integer; var I:integer);
begin
    while A[I] <> -9 do begin
        I := I + 1;
        write ('Masukkan bilangannya : ') ; readln(A[I]);
    end; 
    I:= I-1;
end; 

procedure CetakArray(A:array of integer; N:integer);
var i : integer;
begin
    for i := 1 to N do write(A[i],', ');
end;

procedure HitungJumlah( A:array of integer; X : integer; var Total:longint);
var i : integer;
begin
    for i := 1 to X do Total := Total + A[i];
end; 

begin
    InputData (A,n) ; 
    writeln ('Banyaknya bilangan : ' ,n);
    write ('Elemen array-nya adalah : ');
    CetakArray(A,n); 
    writeln;
    HitungJumlah(A,n,Jumlah); 
    write(' Jumlah akhir = ',Jumlah);
    RATA := Jumlah/n; writeln (' dan Rata-rata = ',RATA);
    writeln (' --o SELESAI o---');
    readln;
end.