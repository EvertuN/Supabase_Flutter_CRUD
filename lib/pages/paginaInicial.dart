import 'package:flutter/material.dart';
import 'package:mobile_crud_supabase/pages/cadastrarPessoa.dart';
import 'package:mobile_crud_supabase/pages/listarPessoa.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(73, 144, 252, 1),
          centerTitle: true,
          title: const Text(
            'Página Inicial',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(15),
          children: [
            InkWell(
              //splashColor: Colors.red,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CadastrarPessoa(),
                    ));
              },
              child: const Card(
                color: Color.fromRGBO(73, 144, 252, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Cadastrar Pessoa",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint('Cadastrar Produto');
              },
              child: const Card(
                color: Color.fromRGBO(73, 144, 252, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Cadastrar Produto",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint('Cadastrar Fornecedor');
              },
              child: const Card(
                color: Color.fromRGBO(73, 144, 252, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.store,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Cadastrar Fornecedor",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListarPessoa(),
                    ));
              },
              child: const Card(
                color: Color.fromRGBO(73, 144, 252, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list_alt,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lista Pessoa",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint('Listar Produto');
              },
              child: const Card(
                color: Color.fromRGBO(73, 144, 252, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.line_style,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Listar Produto",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint('Listar Fornecedor');
              },
              child: const Card(
                color: Color.fromRGBO(73, 144, 252, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.featured_play_list_outlined,
                      color: Colors.white,
                      size: 70.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Listar Fornecedor",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
