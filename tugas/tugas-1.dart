// Rumus hitung luas segitiga dengan pemrograman class
import 'dart:io';

void main() {
  HitungLuas luasBangunDatar = new HitungLuas();

  // Segitiga
  stdout.write("Masukkan alas segitiga : ");
  var alas = stdin.readLineSync();
  stdout.write("Masukkan Tinggi segitiga : ");
  var tinggi = stdin.readLineSync();

  luasBangunDatar.setSegitiga(int.parse(alas!), int.parse(tinggi!));
  print(
      "Hasil hitung luas segitiga adalah : ${luasBangunDatar.hitungSegitiga()}");
  print(" ");

  // Persegi panjang
  stdout.write("Masukkan lebar persegi panjang : ");
  var lebar = stdin.readLineSync();
  stdout.write("Masukkan panjang persegi panjang : ");
  var panjang = stdin.readLineSync();

  luasBangunDatar.setPersegiPanjang(int.parse(lebar!), int.parse(panjang!));
  print(
      "Hasil hitung luas persegi panjang adalah : ${luasBangunDatar.hitungPersegiPanjang()}");
  print(" ");

  // Tidak menggunakan input
  // Persegi
  luasBangunDatar.setPersegi(90);
  print(
      "Hasil hitung luas persegi adalah : ${luasBangunDatar.hitungPersegi()}");

  // Tidak menggunakan input
  // Lingkaran
  luasBangunDatar.setLingkaran(7);
  print(
      "Hasil hitung luas lingkaran adalah : ${luasBangunDatar.hitungLingkaran()}");
}

class HitungLuas {
  int? alas;
  int? tinggi;
  int? panjang;
  int? lebar;
  int? sisi;
  int? jari;

  num? setSegitiga(alasSegitiga, tinggiSegitiga) {
    alas = alasSegitiga;
    tinggi = tinggiSegitiga;
    return null;
  }

  num? setPersegiPanjang(panjangPP, lebarPP) {
    panjang = panjangPP;
    lebar = lebarPP;
    return null;
  }

  num? setPersegi(sisiPersegi) {
    sisi = sisiPersegi;
    return null;
  }

  num? setLingkaran(jariLingkaran) {
    jari = jariLingkaran;
    return null;
  }

  num hitungPersegi() {
    return sisi! * sisi!;
  }

  num hitungSegitiga() {
    return 0.5 * alas! * tinggi!;
  }

  num hitungPersegiPanjang() {
    return panjang! * lebar!;
  }

  num hitungLingkaran() {
    return 3.14 * jari! * jari!;
  }
}
