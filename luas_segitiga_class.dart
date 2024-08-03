// Rumus hitung luas segitiga dengan pemrograman class
import 'dart:io';

void main(){
  // memunculkan nama, nim
  print("Nama : Dany Akmallun Niam");
  print("Nim  : 231240001460");
  print(" ");

  // memanggil kelas HitungLuas
  HitungLuas luasBangunDatar = new HitungLuas(); 

  // Segitiga
  // mengambil input dari user
  // menggunakan var karena tipe data bisa dinamis dan akan di konversi ke integer dengan int.parse()
  stdout.write("Masukkan alas segitiga : ");
  var alas = stdin.readLineSync();
  stdout.write("Masukkan Tinggi segitiga : ");
  var tinggi = stdin.readLineSync();

  luasBangunDatar.setSegitiga(int.parse(alas!), int.parse(tinggi!));
  print("Hasil hitung luas segitiga adalah : ${luasBangunDatar.hitungSegitiga()}");
  print(" ");

  // Persegi panjang
  stdout.write("Masukkan lebar persegi panjang : ");
  var lebar = stdin.readLineSync();
  stdout.write("Masukkan panjang persegi panjang : ");
  var panjang = stdin.readLineSync();

  luasBangunDatar.setPersegiPanjang(int.parse(lebar!), int.parse(panjang!));
  print("Hasil hitung luas persegi panjang adalah : ${luasBangunDatar.hitungPersegiPanjang()}");
  print(" ");
  
}

// membuat class HitungLuas
class HitungLuas {
  // menggunakan tipe data int untuk semua nama variable, karena hasil input di parse kedalam integer
  int? alas;
  int? tinggi;
  int? panjang;
  int? lebar;
  int? sisi;
  int? jari;

  
  num? setSegitiga (alasSegitiga, tinggiSegitiga) {
    alas = alasSegitiga;
    tinggi = tinggiSegitiga;
    return null;
  }

  num? setPersegiPanjang(panjangPP,lebarPP) {
    panjang = panjangPP;
    lebar = lebarPP;
    return null;
  }

  num hitungSegitiga(){
    return 0.5 * alas! * tinggi!;
  }

  num hitungPersegiPanjang(){
    return panjang! * lebar!;
  }

}

