import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('APP - Lista de tarefas'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Tasks("Aprendendo Flutter"),
            Tasks("Estudar ITIL"),
            Tasks("Criar um app"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Tasks extends StatelessWidget {
  final String nome;
  const Tasks(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.black26,
                  width: 72,
                  height: 140,
                ),
                Text(nome),
                ElevatedButton(
                    onPressed: () {}, child: Icon(Icons.arrow_drop_up))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
