import 'package:flutter/material.dart';
//Mengimpor komponen UI dasar Flutter
import 'package:flutter_bloc_1/home_page.dart';
//Mengimpor halaman HomePage

void main() {
  runApp(MyApp());
}
//Fungsi utama untuk menjalankan aplikasi Flutter.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp adalah container utama untuk seluruh aplikasi.

      home: HomePage(),
      //home: menentukan halaman pertama yang akan ditampilkan
    );
  }
}
