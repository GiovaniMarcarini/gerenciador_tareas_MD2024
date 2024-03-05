
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:gerenciador_tareas/model/tarefa.dart';

class ListaTarefaPage extends StatefulWidget{

  @override
  _ListaTarefaPageState createState() => _ListaTarefaPageState();
}

class _ListaTarefaPageState extends State<ListaTarefaPage>{

  final _tarefas = <Tarefa> [
    Tarefa(id: 1, descricao: 'Fazer as tarefas', prazo: DateTime.now().add(Duration(days: 5))),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _criarAppBar(),
      body: _criarBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: 'Nova Tarefa',
      ),
    );
  }

  AppBar _criarAppBar(){
    backgroundColor: Theme.of(context).colorScheme.primaryContainer;
    return AppBar(
      title: Text('Tarefas'),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
        )
      ],
    );
  }

  Widget _criarBody(){

    if(_tarefas.isEmpty){
      return  const Center(
        child: Text('Tudo certo por aqui!!!',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }

    return ListView.separated(
        itemBuilder: (BuildContext context, int index){
          final tarefa = _tarefas[index];
          return ListTile(
            title: Text('${tarefa.id} - ${tarefa.descricao}'),
            subtitle: Text(tarefa.prazoFormatado),
    );
    },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: _tarefas.length,
    );
  }
}