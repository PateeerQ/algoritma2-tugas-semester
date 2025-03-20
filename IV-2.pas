Function Fibonacci (n: word): word;
Begin
    If n < 2 then Fibonacci := n
    Else Fibonacci := Fibonacci(n-2) + Fibonacci(n-1);
End;
Var n: word;

Begin
    Write(' suku ke berapa? '); readln(n);
    Writeln('nilai suku ke ',n,' adalah ', Fibonacci(n));
    readln;
End.