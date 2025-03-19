program array_record;
uses crt;
Type mahasiswa = record
    nama    : string;
    npm     : string;
    nilai   : integer;
end;
var mhs : array[1..10] of mahasiswa;
    jum : byte;
    i, j: integer;

procedure Input;
begin 
    writeln('Data Mhs');
    write('Jumlah data: ');
    readln(jum);
    writeln;
    for i := 1 to jum do
        begin
            writeln ('Data ke-', I);
            write('Nama: '); readln(Mhs[i].nama);
            write ('Npm: '); readln(Mhs[i].npm);
            write ('Nilai: '); readln(Mhs[i].nilai);

            writeln;
        end;
end;

Procedure Judul;
Begin
    Clrscr;
    Gotoxy (13,1); writeln('DATA MAHASISHA');
    Writeln('______________________________________________________');
    gotoxy (3,3); write('No');
    gotoxy (7,3); write ('Nama');
    gotoxy (27,3); write('Npm');
    gotoxy (45,3); writeln ('Nilai');
    Writeln('______________________________________________________');
end;

Procedure Tampil;
Begin
    for I:=1 to Jum do
        begin
            gotoxy (3,4 + I); write (I);
            gotoxy (7,4 + I); write (Mhs[I].Nama);
            gotoxy (27,4 + I); write (Mhs[I].Npm);
            gotoxy (45,4 + I); write (Mhs[I].Nilai);
        end;
    Writeln;
    Writeln('______________________________________________________');
end;

begin
    clrscr;
    Input;
    Judul;
    Tampil;
    readln;
end.