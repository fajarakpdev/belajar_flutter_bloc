import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//Mengimpor paket flutter_bloc, yang digunakan untuk mengelola logika aplikasi menggunakan BLoC
import 'package:flutter_bloc_1/bloc/counter_bloc/counter_bloc.dart';
import 'counter_bloc.dart';
import 'counter_manual.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Menu')),
      //Menampilkan judul di bagian atas halaman, bertuliskan "Home Menu".
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Buka Counter Manual'),
              //Di tengah layar (Center), ada tombol (ElevatedButton) dengan tulisan "Buka CounterPage".
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CounterManual()),
                );
              },
              //Saat tombol ditekan, kita pindah ke halaman baru menggunakan Navigator.push.
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Buka Counter BLoC'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => BlocProvider(
                      //BlocProvider digunakan untuk pengontrol dari CounterBloc
                      create: (_) => CounterBloc(),
                      //CounterBloc() dibuat di sini, khusus untuk halaman CounterPage
                      child: CounterPage(),
                      //Halaman CounterPage sekarang punya akses penuh ke Bloc tersebut
                      /*Jadi: setiap kali kita buka CounterPage, kita juga menyiapkan 
                      logika hitungannya atau bloc-nya.*/
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
