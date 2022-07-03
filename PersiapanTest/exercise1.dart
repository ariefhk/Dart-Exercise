import 'dart:io';

void main(List<String> args) {
  // piramidaBiasa(5);
  // piramidaTerbalik(5);
  // urut(5);
  kotak(5);
}

void piramidaBiasa(num) {
  for (var i = 0; i < num; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write('${j}');
    }
    print('');
  }
}

void piramidaTerbalik(num) {
  for (var i = num; i > 0; i--) {
    for (var j = 0; j < i; j++) {
      stdout.write('${j}');
    }
    print('');
  }
}

void urut(num) {
  var angka;
  for (angka = 0; angka < num; angka++) {
    for (var j = 0; j < num; j++) {
      if (j == angka) {
        stdout.write('${j}');
      } else {
        stdout.write('-');
      }
    }
    print('');
  }
}

void kotak(num) {
  for (var i = 0; i < num; i++) {
    for (var j = 0; j < num; j++) {
      stdout.write('${j}');
    }
    print('');
  }
}
