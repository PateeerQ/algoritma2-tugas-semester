program hitung_rata;
uses crt;

var 
    i, k, n: integer;
    jumlah: longint;
    rata: real;
    a: array[0..100] of integer;

begin
    clrscr;
    while a[n] <> -9 do
        begin
            n := n + 1;
            write('Masukkan bilangannya: '); readln(a[n]);
        end;
    n := n - 1;
    writeln('Banyaknya bilangan: ', n);

    writeln('Elemen array-nya adalah: ');
    for i := 1 to n do
        write(a[i], ', '); writeln;
    
    for i := 1 to n do jumlah := jumlah + a[i];
    write('Jumlah akhir = ', jumlah);

    rata := jumlah/n;
    writeln(' dan rata-rata = ', rata);
    writeln(' --o SELESAI o--');
    readln;
end.