Program Urut_BUBBLE;
uses crt;

var i,j,k,temp,n : integer;
    A, B, C : array [1..100] of integer;

begin
    clrscr; 
    textcolor(12);
    write('Banyaknya Elemen Array : '); 
    readln(n);
    
    for i := 1 to n do A[i] := random(1000);
    {Cetak Array Sebelum Pengurutan}
    writeln; textcolor(15);

    write('Sebelum diurutkan : ');
    for i := 1 to n do write(A[i],' ');

    writeln; 
    textcolor(15);
    writeln('Proses Pengurutan Bubble : ');
    for i := 1 to n-1 do begin
        for j := n downto i+1 do begin
            if A[j-1] > A[j] then begin
                temp := A[j-1];
                A[j-1] := A[j];
                A[j] := temp;
            end;
        end;
        {Cetak Array tiap langkah pengurutan:}
        writeln; write('Hasil akhir langkah ke-',i,' : ');
        for k := 1 to n do write(A[k],' ');
    end;

    {Cetak Array Setelah Pengurutan}
    writeln; 
    textcolor(15); 
    write('Hasil Pengurutan Bubble : ');
    for i := 1 to n do write(A[i],' ');
    readln;
end.