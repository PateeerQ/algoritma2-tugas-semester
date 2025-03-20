Procedure faktorial(n: byte; var hasil: longint);
Begin
    If N <= 1 then hasil := 1
    Else Begin
        Faktorial(N-1, hasil);
        Hasil := N*hasil;
    End; 
end;


Var N : byte; F : longint;
Begin
    Write('Berapa faktorial? '); readln(N);
    Faktorial(N,F); Writeln('Faktorial = ',F); readln;
End.