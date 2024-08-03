abstract class Buku {
  final String _judul;  
  final String _penulis;
  final String _isbn;

  Buku(this._judul, this._penulis, this._isbn);

  String get judul => _judul;
  String get penulis => _penulis;
  String get isbn => _isbn;

  String displayInfo();
}

class Novel extends Buku {

  final String _genre;

  Novel (super.judul, super.penulis, super.isbn, this._genre);

  String get genre => _genre;

  @override
  String displayInfo() {
    String dataNovel = 'Novel: $judul oleh $penulis (ISBN: $isbn, Genre: $genre)';
    return dataNovel;
  }

}

class Majalah extends Buku {

  final int _edisi;

  Majalah (super.judul, super.penulis, super.isbn, this._edisi);

  int get edisi => _edisi;

  @override
  String displayInfo() {
    String dataMajalah = 'Majalah: $judul oleh $penulis (ISBN: $isbn Edisi: $edisi)';
    return dataMajalah;
  }
}




