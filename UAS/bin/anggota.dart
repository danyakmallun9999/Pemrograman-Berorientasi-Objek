class Anggota {
  final String _nama;
  final String _id;

  Anggota(this._nama, this._id);

  String get nama => _nama;
  String get id => _id;

  String displayInfo() {
    String anggota = '$nama (NIM: $id)';
    return anggota;
  }
}
