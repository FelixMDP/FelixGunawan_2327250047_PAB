class Produk {
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double totalHargaTanpaDiskon() {
    return harga * jumlah;
  }

  double totalHargaDenganDiskon() {
    double totalTanpaDiskon = totalHargaTanpaDiskon();
    double hargadiskon = totalTanpaDiskon * (diskon / 100);
    return totalTanpaDiskon - hargadiskon;
  }

  void tampilkanInformasiProduk() {
    print("Nama Produk                : $namaProduk");
    print("Harga Barang               : $harga");
    print("Jumlah Barang              : $jumlah");
    print("Diskon                     : ${diskon}%");
    print("\n");
    print("Total Harga Tanpa Diskon   : ${totalHargaTanpaDiskon()}");
    print("Total Harga Setelah Diskon : ${totalHargaDenganDiskon()}");
  }
}

void main() {
  Produk Kamera = Produk("kamera", 1500000, 2, 10);

  Kamera.tampilkanInformasiProduk();
}
