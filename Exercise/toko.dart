import 'dart:io';

void main(List<String> args) {
  String? kodeBarang, namaBarang, caraBeli, cobaLagi;

  double? jumlahBarang, hargaBarang, totalHarga, diskon, totalBayar;

  

  bool mulai = true;
  while (mulai) {
    stdout.write('Kode Barang: ');
    kodeBarang = stdin.readLineSync();
    stdout.write('Jumlah Barang: ');
    jumlahBarang = double.tryParse(stdin.readLineSync()!);
    stdout.write('Cara beli [T/K]: ');
    caraBeli = stdin.readLineSync();

    if (kodeBarang == 'SPT') {
      namaBarang = 'Sepatu';
      hargaBarang = 200000;
    } else if (kodeBarang == 'SND') {
      namaBarang = 'Sandal';
      hargaBarang = 100000;
    } else if (kodeBarang == 'TST') {
      namaBarang = 'T-Shirt';
      hargaBarang = 150000;
    } else if (kodeBarang == 'TOP') {
      namaBarang = 'Topi';
      hargaBarang = 50000;
    } else {
      namaBarang = '-';
      hargaBarang = 0;
    }

    totalHarga = hargaBarang * jumlahBarang!;

    if (caraBeli!.toUpperCase() == 'T') {
      diskon = 0.1 * totalHarga;
    } else {
      diskon = 0;
    }

    totalBayar = totalHarga - diskon;
    print('Nama Barang: ${namaBarang}');
    print('Harga Barang: ${hargaBarang}');
    print('Total Harga: ${totalHarga}');
    print('Diskon: ${diskon}');
    print('Total Bayar: ${totalBayar}');

    stdout.write('Apakah akan mencoba lagi [Y/T]: ');
    cobaLagi = stdin.readLineSync();
    if (cobaLagi!.toUpperCase() != 'Y') {
      mulai = false;
    }
  }
}
