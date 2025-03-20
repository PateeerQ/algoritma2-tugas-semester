Program HITUNG_RATA_3;
var k, n, Maksimum, Minimum : integer;
Jumlah : longint; RATA : real;
A : array[0..100] of integer;
procedure InputData;
    begin
    while A[n] <> -9 do begin
        n := n + 1;
        write('Masukkan bilangannya : '); readln(A[n]);
    end; 
    n := n - 1;
end; 

procedure CetakArray;
var i : integer;
begin
    for i := 1 to n do write(A[i],', ');
end;

function Total (B:array of integer; X:integer):longint;
    var i : integer;
    temp : longint;
    begin
    temp := 0;
    for i := 1 to X do temp := temp + B[i];
    Total := temp;
end; 

function MIN(B:array of integer; X:integer):integer;
var i : integer;
temp : integer;
begin
    temp := B[1];
    for I := 2 to X do if temp > B[i] then temp := B[i];
    MIN := temp;
end;

function MAX(D:array of integer; N:integer):integer;
var i : integer;
temp : integer;
begin
    temp := D[1];
    for i:= 2 to N do if temp < D[i] then temp :=D[i];
    MAX := temp;
end;

begin 
    InputData;
    writeln('Banyaknya bilangan : ',n);
    write('Elemen array-nya adalah : ');
    CetakArray; 
    writeln;
    Jumlah := Total(A,n); write('Jumlah akhir =',Jumlah);
    RATA := Jumlah/n; writeln(' dan Rata-rata = ',RATA);
    Minimum := MIN(A,n); writeln('Elemen terkecil =',Minimum);
    Maksimum := MAX(A,n); writeln('Elemen terbesar =',Maksimum);
    writeln(' --o SELESAI 0--'); readln;
end.