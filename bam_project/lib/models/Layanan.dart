class Layanan {
  int id;
  String namaLayanan;

  Layanan(this.id, this.namaLayanan);

  static List<Layanan> getLayanan() {
    return <Layanan>[
      Layanan(1, 'Pasang Baru'),
      Layanan(2, 'Gangguan'),
    ];
  }
}

