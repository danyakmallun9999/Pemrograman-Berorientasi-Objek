import 'dart:io';

void main () {
  print('-----------------------------------------------------------');
  print('------------- LATIHAN CONSTRUCTOR DAN CASCADE -------------');
  print('-----------------------------------------------------------');
  print(' ');

  // menggunakan rumus input dan output
  // menggunakan int.parse() untuk mengubah string ke integer
  stdout.write('Masukkan sisi persegi = ');
  num sisi = int.parse(stdin.readLineSync()!);

  // membuat object dari class HitungLuasBangunDatar
  // object tersebut saya beri nama hitungPersegi
  var hitungPersegi = HitungLuasBangunDatar(0, 0 ,0 ,0 ,0 , 0, '')
  ..sisi = sisi // menggunakan fungsi cascade
  ..bangunDatar = 'persegi'; // menggunakan fungsi cascade
  hitungPersegi.namaBangunDatar(); // memanggil method namaBangunDatar yang mengembalikan print
  print('Luas Persegi = ${hitungPersegi.hitungPersegi()}'); // memanggil method hitungPersegi yang mengembalikan hasil dari luas bangun datar

  print('---------');
  print(' ');
  print('---------');

  // menggunakan rumus input dan output
  // menggunakan int.parse() untuk mengubah string ke integer
  stdout.write('Masukkan lebar persegi panjang = ');
  num lebar = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan panjang persegi panjang = ');
  num panjang = int.parse(stdin.readLineSync()!);

  var hitungPersegiPanjang = HitungLuasBangunDatar(0, 0, 0, 0, 0, 0, '')
  ..lebar = lebar // menggunakan fungsi cascade
  ..panjang = panjang // menggunakan fungsi cascade
  ..bangunDatar = 'Persegi Panjang'; // menggunakan fungsi cascade
  hitungPersegiPanjang.namaBangunDatar(); // memanggil method namaBangunDatar yang mengembalikan print
  print('Luas Persegi Panjang = ${hitungPersegiPanjang.hitungPersegiPanjang()}'); // memanggil method hitungPersegi yang mengembalikan hasil dari luas bangun datar

  print('---------');
  print(' ');
  print('---------');

  // menggunakan rumus input dan output
  // menggunakan int.parse() untuk mengubah string ke integer
  stdout.write('Masukkan radius lingkaran = ');
  num r = int.parse(stdin.readLineSync()!);

  var hitungLingkaran = HitungLuasBangunDatar(0, 0, 0, 0, 0, 7, '')
  ..r = r
  ..bangunDatar = 'Lingkaran'; // menggunakan fungsi cascade
  hitungLingkaran.namaBangunDatar(); // memanggil method namaBangunDatar yang mengembalikan print
  print('Luas Lingkaran = ${hitungLingkaran.hitungLingkaran()}'); // memanggil method hitungPersegi yang mengembalikan hasil dari luas bangun datar

}

// class HitungLuasBangunDatar yang dapat digunakan untuk mencari luas bangun datar 
class HitungLuasBangunDatar {
  // membuat beberapa atribute untuk kebutuhan dari masing-masing bangun datar
  // rata-rata menggunakan tipe data num dikarenakan angka bisa berupa bilangan desimal dan pecahan
  // ada 1 atribute dengan tipe data String untuk menampung nama bangun datar
  num panjang = 0;
  num tinggi = 0;
  num lebar = 0;
  num alas = 0;
  num sisi = 0;
  num r = 0;
  num hasil = 0;
  String bangunDatar = '';

  // menggunakan construktor dan menggunakan yang versi ringkas
  HitungLuasBangunDatar(this.alas, this.lebar, this.panjang, this.tinggi, this.sisi, this.r, this.bangunDatar);

  // method menampilkan nama bangun datar
  void namaBangunDatar () {
    print('Nama Bangun Datar = $bangunDatar');
  }

  // method kalkulasi luas persegi
  hitungPersegi () {
    hasil = sisi * sisi;
    return hasil;
  }

  // method kalkulasi luas persegi panjang
  hitungPersegiPanjang () {
    hasil = panjang * lebar;
    return hasil;
  }

  // method kalkulasi luas lingkaran
  hitungLingkaran () {
    hasil = 3.14 * r * r;
    return hasil;
  }
}
