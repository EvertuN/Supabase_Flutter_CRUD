import 'package:flutter/material.dart';
import 'package:mobile_crud_supabase/pages/paginaInicial.dart';

class ListarPessoa extends StatefulWidget {
  const ListarPessoa({super.key});

  @override
  State<ListarPessoa> createState() => _ListarPessoaState();
}

class _ListarPessoaState extends State<ListarPessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(73, 144, 252, 1),
        centerTitle: true,
        title: const Text(
          'Listar Pessoas',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaginaInicial(),
                ));
          },
        ),
      ),
    );
  }
}
