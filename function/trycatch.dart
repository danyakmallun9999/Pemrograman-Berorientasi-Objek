void main (){
  try {
    var angka = 7 ~/ 2;
    print(angka);
    print("Ini bagian success");
  } catch (error) {
    print("Ini bagian gagal");
    print("ini errornya : $error");
  } finally {
    print("Ini bagian final");
  }
}