// To parse this JSON data, do
//
//     final modelFilter = modelFilterFromJson(jsonString);

import 'dart:convert';

ModelFilter modelFilterFromJson(String str) => ModelFilter.fromJson(json.decode(str));

String modelFilterToJson(ModelFilter data) => json.encode(data.toJson());

class ModelFilter {
  ModelFilter({
    this.status,
    this.pesan,
    this.data,
  });

  int status;
  String pesan;
  List<Filter> data;

  factory ModelFilter.fromJson(Map<String, dynamic> json) => ModelFilter(
    status: json["status"] == null ? null : json["status"],
    pesan: json["pesan"] == null ? null : json["pesan"],
    data: json["data"] == null ? null : List<Filter>.from(json["data"].map((x) => Filter.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "pesan": pesan == null ? null : pesan,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Filter {
  Filter({
    this.id,
    this.namaKategori,
    this.filter,
    this.gambar,
    this.berita,
  });

  int id;
  String namaKategori;
  String filter;
  String gambar;
  List<Berita> berita;

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
    id: json["id"] == null ? null : json["id"],
    namaKategori: json["nama_kategori"] == null ? null : json["nama_kategori"],
    filter: json["filter"] == null ? null : json["filter"],
    gambar: json["gambar"] == null ? null : json["gambar"],
    berita: json["berita"] == null ? null : List<Berita>.from(json["berita"].map((x) => Berita.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "nama_kategori": namaKategori == null ? null : namaKategori,
    "filter": filter == null ? null : filter,
    "gambar": gambar == null ? null : gambar,
    "berita": berita == null ? null : List<dynamic>.from(berita.map((x) => x.toJson())),
  };
}

class Berita {
  Berita({
    this.judul,
    this.isi,
    this.lokasi,
    this.foto,
  });

  String judul;
  String isi;
  String lokasi;
  String foto;

  factory Berita.fromJson(Map<String, dynamic> json) => Berita(
    judul: json["judul"] == null ? null : json["judul"],
    isi: json["isi"] == null ? null : json["isi"],
    lokasi: json["lokasi"] == null ? null : json["lokasi"],
    foto: json["foto"] == null ? null : json["foto"],
  );

  Map<String, dynamic> toJson() => {
    "judul": judul == null ? null : judul,
    "isi": isi == null ? null : isi,
    "lokasi": lokasi == null ? null : lokasi,
    "foto": foto == null ? null : foto,
  };
}
