program dealer;

var

// variable input
nama_customer:String;
kode:Char;
cicilan_ke:Integer;

// variable assignment
nama_motor:String;
harga_motor:Integer;
cicilan:Integer;
hadiah:String;
discount:Integer;
nilai_discount:Real;


begin

// Input
Write('Masukan Nama Lengkap   : ');ReadLn(nama_customer);
Write('Kode Motor             : ');ReadLn(kode);
Write('Pembayaran Cicilan Ke- : ');ReadLn(cicilan_ke);
WriteLn('');
WriteLn('');

// Kondisi untuk menentukan nama motor, harga, cicilian per bulan, dan hadiah yang didapat
if (kode = 'B') then
  begin
    nama_motor := 'Beat';
    harga_motor := 1000;
    cicilan := 100;
    hadiah := 'Helm';
  end
    
else if (kode = 'S') then
  begin
    nama_motor := 'Scopy';
    harga_motor := 1500;
    cicilan := 150;
    hadiah := 'Helm, Sarung Tangan';
  end

else if (kode = 'N') then
  begin
    nama_motor := 'NMax';
    harga_motor := 3000;
    cicilan := 250;
    hadiah := 'Helm, Sarung Tangan, Oli Mesin';
  end

else if (kode = 'V') then
  begin
    nama_motor := 'Vario 125';
    harga_motor := 2100;
    cicilan := 185;
    hadiah := 'Helm, Sarung Tangan';
  end

else if (kode = 'G') then
  begin
    nama_motor := 'Gear';
    harga_motor := 1900;
    cicilan := 160;
    hadiah := 'Helm';
  end

else if (kode = 'L') then
  begin
    nama_motor := 'Lexi';
    harga_motor := 2000;
    cicilan := 175;
    hadiah := 'Helm, Sarung Tangan, Oli Mesin';
  end

else
  begin
    WriteLn('Masukan Kode dengan huruf besar (B,S,N,V,G,L)');
    ReadLn();
    exit;
  end;


// Kondisi untuk menentukan persen(%) diskon cicilan
if ((kode = 'S') OR (kode = 'B')) AND (cicilan_ke > 7) then
  discount := 2

else if ((kode = 'G') OR (kode = 'L')) AND (cicilan_ke > 9) then
  discount := 3

else if ((kode = 'N') OR (kode = 'V')) AND (cicilan_ke > 8) then
  discount := 4;


// Set Nilai Diskon (Rp. ...)
nilai_discount := ((cicilan * discount) / 100);




// Output
WriteLn('Invoice Jumlah Pembayaran Dealer');
WriteLn('===================================');
WriteLn('Nama Customer          : ', nama_customer );
WriteLn('Nama Motor             : ', nama_motor );
WriteLn('Harga Motor            : ', 'Rp. ' , harga_motor );
WriteLn('Hadiah                 : ', hadiah );
WriteLn('Pembayaran Cicilan Ke  : ', cicilan_ke , ' (Rp. ', cicilan ,')');
WriteLn('Discount               : ', 'Rp. ' ,nilai_discount:2:2, ' (', discount , '%)');
WriteLn('===================================');
WriteLn('Jumlah Pembayaran      : ', 'Rp. ' , (cicilan - nilai_discount):2:2);
WriteLn('===================================');

ReadLn();

end.