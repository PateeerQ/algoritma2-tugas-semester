program matriks;
uses crt;
Type
    larik = array[1..25, 1..25] of real;

var
    i,j,k : byte;
    m,n,l : byte;
    a,b,c : larik;

begin
    clrscr;
    write('Baris matriks pertama ? ');
    readln(m);
    write('Baris matriks pertama/baris matriks kedua ? ');
    readln(n);
    write('Kolom matriks kedua ? ');
    readln(l);
    writeln;

    writeln('Matriks yang pertama: ');
    for i := 1 to m do
        begin
            for j := 1 to n do
                begin
                    write('Nilai [', i, ', ', j, '] = '); 
                    readln(a[i, j]);
                end;
            writeln;
        end;
    
    writeln('Matriks yang kedua: ');
    for i := 1 to n do
        begin
            for j := 1 to l do
                begin
                    write('Nilai [', i, ',', j, '] = '); readln(b[i, j]);
                end;
            writeln;
        end;
    
    for i := 1 to m do
        begin
            for j := 1 to n do
                begin
                    c[i, j] := 0;
                    for k := 1 to l do
                        c[i, j] := c[i, j] + a[i, k] * b[k, j];
                end;
        end;
    clrscr;
    writeln('Hasil dari perkalian matriks: ');
    writeln;
    for i := 1 to m do 
        begin
            for j := 1 to l do
                writeln(c[i, j]:9:2);
            writeln;
        end;
end.