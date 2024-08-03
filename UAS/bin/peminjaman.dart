import 'buku.dart';
import 'anggota.dart';

class Peminjaman {
  final Buku buku;
  final Anggota anggota;
  final DateTime tanggalPinjam;
  final DateTime tanggalKembali;

  Peminjaman(this.buku, this.anggota, this.tanggalPinjam, this.tanggalKembali);

  void displayInfo() {
    String bukuYangDipinjam = buku.displayInfo();
    String anggotaYangMinjam = anggota.displayInfo();

    print(' ');
    print('[INFORMASI KESELURUHAN]');
    print('Buku yang di pinjam   : $bukuYangDipinjam');
    print('Dipinjam oleh         : $anggotaYangMinjam');
    print('Tanggal Meminjam      : $tanggalPinjam');
    print('Tanggal Mengambalikan : $tanggalKembali');
    print(' ');
  }
}




















// menggunakan enkapsulasi

// Kelas yang merepresentasikan sebuah Peminjaman
// class Peminjaman {
//   final Buku _buku;
//   final Anggota _anggota;
//   final DateTime _tanggalPinjam;
//   final DateTime _tanggalKembali;

//   Peminjaman(this._buku, this._anggota, this._tanggalPinjam, this._tanggalKembali);

//   Buku get buku => _buku;
//   Anggota get anggota => _anggota;
//   DateTime get tanggalPinjam => _tanggalPinjam;
//   DateTime get tanggalKembali => _tanggalKembali;

//   void displayInfo() {
//     String bukuYangDipinjam = buku.displayInfo();
//     String anggotaYangMinjam = anggota.displayInfo();

//     print(' ');
//     print('[INFORMASI KESELURUHAN]');
//     print('Buku yang di pinjam   : $bukuYangDipinjam');
//     print('Dipinjam oleh         : $anggotaYangMinjam');
//     print('Tanggal Meminjam      : $tanggalPinjam');
//     print('Tanggal Mengambalikan : $tanggalKembali');
//     print(' ');
//   }
// }