class Layanan {
  String namaLayanan;

  Layanan(this.namaLayanan);

  static List<Layanan> getLayanan() {
    return <Layanan>[
      Layanan(' Pasang Baru'),
      Layanan('Gangguan'),
    ];
  }
}
