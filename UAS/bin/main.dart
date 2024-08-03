import 'dart:io';
import 'buku.dart';
import 'anggota.dart';
import 'peminjaman.dart';

dynamic displayInformasiBuku() {
  print(' ');
  print('-----| Informasi Peminjam |-------------------------');
  stdout.write('Masukkan Nama    : ');
  String? nama = stdin.readLineSync();
  stdout.write('Masukkan Nim     : ');
  String? nim = stdin.readLineSync();
  print(' ');

  var anggota = Anggota(nama!, nim!);

  print('-----| Informasi Buku |-----------------------------');
  stdout.write('Masukkan judul      : ');
  String? judul = stdin.readLineSync();
  stdout.write('Masukkan Penulis    : ');
  String? penulis = stdin.readLineSync();
  stdout.write('Masukkan ISBN       : ');
  String? isbn = stdin.readLineSync();
  stdout.write('Masukkan Jenis buku : ');
  String? jenisBuku = stdin.readLineSync();

  DateTime waktuPinjam = DateTime.now();
  DateTime waktuPengembalian = waktuPinjam.add(Duration(days: 7));

  Peminjaman peminjaman;

  switch (jenisBuku) {
    case 'novel':
      stdout.write('Masukkan Genre      : ');
      String? genre = stdin.readLineSync();

      var novel = Novel(judul!, penulis!, isbn!, genre!);

      peminjaman = Peminjaman(novel, anggota, waktuPinjam, waktuPengembalian);

      break;

    case 'majalah':
      stdout.write('Masukkan Edisi      : ');
      int edisi = int.parse(stdin.readLineSync()!);
      var majalah = Majalah(judul!, penulis!, isbn!, edisi);

      peminjaman = Peminjaman(majalah, anggota, waktuPinjam, waktuPengembalian);

      break;

    default:
      print('Pilihan tidak ada');
      return;
  }
  peminjaman.displayInfo();
}

dynamic home() {
  while (true) {
    print('====================================================');
    print('=|               PERPUSTAKAAN CERIA               |=');
    print('====================================================');
    print(' ');

    print('''
  1. Pinjam Buku
  2. Keluar
''');

    stdout.write('Masukkan Pilihan : ');
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case == 1:
        displayInformasiBuku();

      case == 2:
        break;
    }
  }
}

Future<void> main() async {
  while (true) {
    stdout.write('Masukkan username : ');
    String? username = stdin.readLineSync()!;
    stdout.write('Masukkan password : ');
    String? password = stdin.readLineSync()!;

    if (username == 'dany' && password == 'root') {
      home();
    } else {
      print('Username atau Password salah!');
    }
  }
}
