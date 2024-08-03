// aplikasi pemberi nilai ujian

void main() {
  // variable nama menggunakan tipe data string, karena menampung karakter
  // variable nim menggunakan tipe data string, walaupun berupa angka tetapi tidak dibutuhkan untuk kalkulasi
  String nama = 'Dany Akmallun Niam';
  String nim = '231240001460';

  // variable tugas menggunakan tipe data double karena nilai tugas bisa berupa bilangan pecahan
  // variable absen menggunakan tipe data int karena nilai absen tidak berupa bilangan pecahan

  // jika nilai karakter baik nilai absen + 15
  double tugas = 91;
  int absen = 70;

  // menggunakan pengkondisian if
  // jika nilai tugas >= 90 dan nilai absen >= 80 maka layak mengikuti UTS
  if (tugas > 90 && absen > 80) {
    print('Nama mahasiswa : $nama');
    print('Nim Mahasiswa  : $nim');
    // jika terpenuhi nilai absen dan tugas + 5
    print('nilai absen    : ${absen + 5}');
    print('nilai tugas    : ${tugas + 5}');
    print('Status         : Boleh mengikuti UTS');

    // jika pengkondisian tidak terpenuhi, maka tidak layak mengikuti UTS
  } else {
    print('Nama mahasiswa : $nama');
    print('Nim Mahasiswa  : $nim');
    // jika tidak terpenuhi nilai absen dan tugas - 5
    print('nilai absen    : ${absen - 5}');
    print('nilai tugas    : ${tugas - 5}');
    print('Status : Tidak layak mengikuti UTS');
  }
}