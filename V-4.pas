program INSERTION_SORT;
uses crt;
var i,j,k,temp,n : integer;
    A,B,C : array [1..100] of integer;

begin
    clrscr; textcolor(12);
    write('Banyaknya Elemen Array : '); readln(n);

    {Input Data}
    for i := 1 to n do
        begin
            write('Elemen ke- ' ,i,': ') ; readln(A[i]);
        end;

    {Cetak Array Sebelum Pengurutan}
    writeln; textcolor(15);
    write('Sebelum diurutkan : ');
    for i := 1 to n do
        write(A[i],' ');

    writeln; textcolor(15) ; writeln;
    writeln ('Proses Pengurutan Insertion : ');

    for i := 2 to n do begin
        temp := A[i];
        j := i-1;

        while (temp < A[j]) and (j > 0) do
            j := j - 1;

        for k := i downto j+1 do
            A[k]:= A[k-1];

        A[j+1]:= temp;
        writeln; textcolor(i);

        write('Hasil akhir langkah ke-' ,i-1,' : ');
        {Cetak Array tiap langkah pengurutan :}
        for k := 1 to n do
            write(A[k],' ');
    end;
    
    {Cetak Array Setelah Pengurutan}
    writeln; writeln; textcolor(15);
    write('Hasil Pengurutan Insertion ');
    for i := 1 to n do
        write(A[i],' ');

    writeln; writeln; textcolor(10);
    write (' Sudah terurut dengan benar khan ..? ');
    readln;
end.