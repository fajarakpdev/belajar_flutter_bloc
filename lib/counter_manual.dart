import 'package:flutter/material.dart';

class CounterManual extends StatefulWidget {
  const CounterManual({Key? key}) : super(key: key);

  @override
  State<CounterManual> createState() => _CounterManualState();
}

class _CounterManualState extends State<CounterManual> {
  int counter = 0;
  //Menyimpan data counter dalam variabel counter. Nilai awalnya 0.

  void increment() {
    setState(() {
      counter++;
    });
  }
  //void artinya fungsi ini tidak mengembalikan nilai apa pun.
  //Menambahkan nilai counter
  /*Memanggil dengan setState(), menyuruh aplikasi untuk memperbarui 
  tampilan, supaya angka yang baru langsung terlihat di layar*/

  void decrement() {
    setState(() {
      counter--;
    });
  }
  //Mirip dengan increment(), tapi untuk mengurangi.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manual Counter')),
      body: Center(
        child: Text(
          'Angka: $counter',
          style: TextStyle(fontSize: 30),
        ),
      ),
      //Menampilkan angka counter di tengah layar dalam bentuk teks besar.
      floatingActionButton: Column(
        //tombol bulat yang mengambang
        mainAxisAlignment: MainAxisAlignment.end,
        //mengatur posisi widget
        children: [
          FloatingActionButton(
            heroTag: 'add',
            onPressed: increment,
            child: Icon(Icons.add),
          ),
          //Tombol tambah → panggil increment()
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'remove',
            onPressed: decrement,
            child: Icon(Icons.remove),
          ),
          //Tombol kurang → panggil decrement()
        ],
      ),
    );
  }
}
