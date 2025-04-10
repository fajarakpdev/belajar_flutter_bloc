import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_1/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_bloc_1/bloc/counter_bloc/counter_event.dart';
import 'package:flutter_bloc_1/bloc/counter_bloc/counter_state.dart';

class CounterPage extends StatelessWidget {
  /*StatelessWidget dipilih karena semua perubahan 
  data diatur oleh BLoC, bukan setState */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter BLoC")),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          /*BlocBuilder akan mendengarkan perubahan 
          data (state) dari CounterBloc*/
          builder: (context, state) {
            final nilaiCounter = state.counter;
            /*nilaiCounter digunakan untuk menyimpan angka itu 
            secara lokal (agar mudah dipakai di banyak tempat dalam widget).*/
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Angka: $nilaiCounter',
                  style: TextStyle(fontSize: 30),
                ),
                
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'add',
            onPressed: () => context.read<CounterBloc>().add(IncrementEvent()),
            child: Icon(Icons.add),
          ),
          /*Tombol + saat ditekan akan mengirim event IncrementEvent 
          ke CounterBloc, lalu angka bertambah 1.*/
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'remove',
            onPressed: () => context.read<CounterBloc>().add(DecrementEvent()),
            child: Icon(Icons.remove),
            /*Tombol – akan mengirim event DecrementEvent, lalu angka berkurang 1.*/
          ),
        ],
      ),
    );
  }
}
