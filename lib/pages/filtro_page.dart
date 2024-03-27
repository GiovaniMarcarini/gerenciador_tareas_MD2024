
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FiltroPage extends StatefulWidget{

  static const ROUTE_NAME = '/filtro';
  static const  CHAVE_CAMPO_ORDENACAO = 'campoOrdenacao';
  static const  CHAVE_ORDENAR_DECRESCENTE = 'usarOrdemDecrescente';
  static const  CHAVE_FILTRO_DESCRICAO = 'filtroDescricao';

  @override
  _FiltroPageState createState() => _FiltroPageState();

}

@override
class _FiltroPageState extends State<FiltroPage>{


  @override
  Widget build(BuildContext context){
    return WillPopScope(
        onWillPop: null,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              title: const Text('Filtro e Ordenação')
          ),
          body: _criaBody(),
        ),
    );
  }

  Widget _criaBody(){
    return ListView(
      children: const [
        Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
          child: Text('Campos para ordenação'),
        )
      ],
    );
  }

}