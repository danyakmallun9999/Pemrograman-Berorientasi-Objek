// Rumus hitung luas segitiga dengan pemrograman prosedural
import 'dart:io';

void main(){
  stdout.write("Masukkan alas = ");
  num? alas = int.parse(stdin.readLineSync()!);
  stdout.write("Masukan Tinggi = ");
  num? tinggi = int.parse(stdin.readLineSync()!);

  num hasilSegitiga = hitungLuasSegitiga(alas : alas, tinggi : tinggi);
  print("Luas Segitiga = $hasilSegitiga cm");

  print(" ");

  stdout.write("Masukkan panjang = ");
  num? panjang = int.parse(stdin.readLineSync()!);
  stdout.write("Masukan lebar = ");
  num? lebar = int.parse(stdin.readLineSync()!);

  num hasil = hitungLuasPersegi(panjang: panjang, lebar: lebar);

  print("Luas Persegi = $hasil cm");
}
  
num hitungLuasSegitiga ({required num alas, required num tinggi}) {
  double P = 0.5;
  num hasil = P * alas * tinggi;
  return hasil;
}

num hitungLuasPersegi ({required num panjang, required num lebar}) {
  return panjang * lebar;
}

