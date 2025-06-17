// models/activity.dart
class Activity {
  String? id;
  String namaKegiatan;
  String kategori;
  String tanggal;
  String deskripsi;
  String? dokumentasi;

  Activity({
    this.id,
    required this.namaKegiatan,
    required this.kategori,
    required this.tanggal,
    required this.deskripsi,
    this.dokumentasi,
  });

  Map<String, dynamic> toJson() {
    return {
      'namaKegiatan': namaKegiatan,
      'kategori': kategori,
      'tanggal': tanggal,
      'deskripsi': deskripsi,
      'dokumentasi': dokumentasi ?? '',
    };
  }

  static Activity fromJson(String id, Map<dynamic, dynamic> json) {
    return Activity(
      id: id,
      namaKegiatan: json['namaKegiatan'],
      kategori: json['kategori'],
      tanggal: json['tanggal'],
      deskripsi: json['deskripsi'],
      dokumentasi: json['dokumentasi'],
    );
  }
}
