Program HITUNG_RATA_2;
var k, n : integer;
    Jumlah : longint;
    RATA : real;
    A : array[0..100] of integer;

procedure InputData;
begin
    while A[n] <> -9 do begin
        n := n + 1;
        write('Masukkan bilangannya : ') ; readln (A[n]);
    end;
    n := n - 1;
end; 

procedure CetakArray;
var i : integer;
begin
    for i := 1 to n do write (A[i],', ');
end;

procedure HitungJumlah(var Total:longint);
var i : integer;
begin
    for i := 1 to n do
    Total := Total + A[i];
end;

begin 
    InputData; 
    writeln ('Banyaknya bilangan : ',n);
    write ('Elemen array-nya adalah : ');
    CetakArray; 
    writeln;
    HitungJumlah(Jumlah);
    write ('Jumlah akhir = ' , Jumlah);
    RATA := Jumlah/n;
    writeln (' dan Rata-rata = ' ,RATA);
    writeln(' --o SELESAI o--');
    readln;
end.