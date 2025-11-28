class JadwalKuliah {
  final String mataKuliah;
  final String hari;
  final String jam;
  final String ruang;
  final String dosen;

  JadwalKuliah({
    required this.mataKuliah,
    required this.hari,
    required this.jam,
    required this.ruang,
    required this.dosen,
  });

  Map<String, dynamic> toJson() => {
    "mataKuliah": mataKuliah,
    "hari": hari,
    "jam": jam,
    "ruang": ruang,
    "dosen": dosen,
  };

  factory JadwalKuliah.fromJson(Map<String, dynamic> json) => JadwalKuliah(
    mataKuliah: json["mataKuliah"],
    hari: json["hari"],
    jam: json["jam"],
    ruang: json["ruang"],
    dosen: json["dosen"],
  );
}
