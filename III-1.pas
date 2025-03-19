program binary_search;
uses crt;
type tipe_larik = word;
     larik      = array [1..8] of tipe_larik;
    
procedure caribiner (x: larik; cari: tipe_larik; bawah,atas: word; var urutketemu: word);
var tengah : word;
begin
    if bawah > atas then urutketemu := 0
    else
        begin
            tengah := (bawah + atas) div 2;
            if cari = x[tengah] then
                urutketemu := tengah
            else 
                begin
                    if cari < x[tengah] then
                        caribiner(x, cari, bawah, tengah-1, urutketemu)
                    else
                        caribiner(x, cari, tengah+1, atas, urutketemu);
                end;
        end;
end;

type nama = string[20];

const
    npm : larik = (1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241);
    nama_mhs : array[1..8] of nama = ('Arief', 'Ani', 'Budi', 'Citra', 'Dewi', 'Erni', 'Fanny', 'Ghana');

var
    cari : word;
    ketemu : word;
    lagi : char;

begin
    lagi := 'Y';
    while upcase(lagi) = 'Y' do
        begin
            clrscr;
            write('NPM Mahasiswa yang dicari: ');
            readln(cari);
            writeln;
            caribiner(npm, cari, 1, 8, ketemu);
            if ketemu = 0 then
                writeln('NPM Mahasiswa ini tidak ada')
            else
                begin
                    writeln('NPM Mahasiswa: ', npm[ketemu]);
                    writeln('Nama Mahasiswa: ', nama_mhs[ketemu]);
                end;
            writeln;
            write('Cari yang lain lagi (Y/T)? '); readln(lagi);
        end;
end.