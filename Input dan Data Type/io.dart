// Import Library
import 'dart:io';

void main(List<String> args) {
  stdout.write('Masukan Nama: ');
  var nama = stdin.readLineSync()!;
  print('Halo, nama saya adalah ${nama}');
}
