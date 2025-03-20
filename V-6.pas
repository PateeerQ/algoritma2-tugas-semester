Program sorting_bubble_selection;
uses crt;
Type larik = array [1..10] of byte;
    objek = object
        bykdata : byte;
        dataawal : larik;
        procedure input;
        procedure tukar (var a,b : byte);
        procedure bubble (data : larik);
        procedure selection (data : larik);
        procedure cetak (data : larik);
    end;
    
procedure objek.input;
var I : byte;
begin
    repeat
        write( 'Banyak Data [max 110] ? ');
        readln (bykdata);
        if (bykdata > 10) then
            begin
                writeln ( 'Data yang dimasukkan kebanyakan ');
                readkey; writeln;
            end;
    until (bykdata <= 10);
    for i := 1 to bykdata do
        begin
            write(' Data ke- ',i,'= '); readln (dataawal[i]);
        end;
end;

procedure objek.tukar (var a, b : byte);
var temp : byte;
begin
    temp := a; a := b; b := temp;
end;

procedure objek.bubble (data : larik);
var i,j : byte;
begin
    clrscr;
    writeln (' bubble sort ');
    write ('awal : ');
    cetak (data);
    for i := 1 to bykdata-1 do
        begin
            if (data [j] > data[j+1]) then
                tukar(data[j], data[j+1]);
            gotoxy (6, wherey);
        end; 
        readkey;

    write (' akhir : ');
    cetak (data); 
    readkey;
end;

procedure objek.selection (data : larik);
var i, j, lok : byte;
begin
    clrscr;
    writeln('selection sort'); write ('awal ');
    cetak (data);
    for i := 1 to bykdata do
        begin
            lok := i ;
            for j := i+1 to bykdata do
            if (data[lok] > data [j]) then
            lok := j; tukar (data [i], data[lok]);
            write ('I = ',i,' lok = ', lok);
            cetak(data);
        end;
end;

procedure objek.cetak (data : larik);
var i : byte;
begin
    for i := 1 to bykdata do
        begin
            gotoxy (i*10, wherey);
            write(data[i] : 5);
        end; writeln;
end;

var sort : objek;
begin
    clrscr;
    sort.input;
    sort.bubble (sort.dataawal);
    sort.selection (sort.dataawal);
end.
