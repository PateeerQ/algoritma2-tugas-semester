Program INSERTION_SWAP_SORT;
uses crt;
var i,j,k,temp,n : integer;
    A,B,C : array [1..100] of integer;

begin
    clrscr; textcolor(12);
    write ('Banyaknya Elemen Array : '); readln(n);
    {Input Data}
    for i := 1 to n do
        begin 
            write('Elemen ke-' ,i,': '); 
            readln(A[i]);
        end;

    {Cetak Array Sebelum Pengurutan}
    writeln; textcolor(15); write('Sebelum diurutkan : ');
    for i := 1 to n do write(A[i], ' ' );
    writeln; textcolor(15); writeln;

    writeln ('Proses Pengurutan Swap_Insertion: ');
    for i := 1 to n-1 do begin
        j := i + 1;
        while (A[j] < A[j-1]) and (j > 1) do 
            begin
                temp := A[j-1];
                A[j-1]:= A[j];
                A[j]:= temp;
                j := j - 1;
            end;
        writeln; textcolor(i);
        write('Hasil akhir langkah ke-',i,' : ');
        {Cetak Array tiap Iangkah pengurutan:}
        for k := 1 to n do write(A[k],' ');
    end;
    {Cetak Array Setelah Pengurutan}
    writeln; writeln; textcolor(15);
    write('Hasil Pengurutan Insertion : ');
    for i := 1 to n do write(A[i],' ');
    readln;
end.
