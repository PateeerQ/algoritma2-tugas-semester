Program Urut_GRAVITASI;
uses crt;

var i,j,k,temp,n : integer;
    A, B, C : array [1..100] of integer;

begin
    clrscr; textcolor(12);
    write('Banyaknya Elemen Array : '); readln(n);

    {Input Data}
    for i := 1 to n do
        begin
            write('Elemen ke-' ,i,': '); readln(A[i]);
        end;

    {Cetak Array Sebelum Pengurutan}
    writeln; textcolor(15); write('Sebelum diurutkan : ');
    for i := 1 to n do
        write(A[i],' ');

    writeln; textcolor(15);
    writeln; 
    writeln('Proses Pengurutan Gravitasi : ');

    for i := 1 to n-1 do begin
        for j := 1 to n-i do begin
            if A[j] > A[j+1] then begin
                temp := A[j+1];
                A[j+1] := A[j];
                A[j] := temp;
            end;
        end;
        writeln; textcolor(i);
        {Cetak Array tiap Iangkah pengurutan :}
        write('Hasil akhir langkah ke-',i,' : ');

        for k := 1 to n do
            write(A[k],' ');
    end;

    {Cetak Array Setelah Pengurutan}
    writeln; writeln; textcolor(15);
    write('Hasil Pengurutan Gravitasi : ');
    for i := 1 to n do
        write(A[i],' ');

    writeln; writeln; textcolor(10);
    write ('Sudah terurut dengan benar khan ..?');
    readln;
end.