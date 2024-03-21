import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_crud_supabase/pages/paginaInicial.dart';

import '../database/operationsSupabase.dart';

class CadastrarPessoa extends StatefulWidget {
  const CadastrarPessoa({super.key});

  @override
  State<CadastrarPessoa> createState() => _CadastrarPessoaState();
}

class _CadastrarPessoaState extends State<CadastrarPessoa> {
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerCPF = TextEditingController();
  TextEditingController controllerDataNasc = TextEditingController();
  TextEditingController controllerTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(73, 144, 252, 1),
        centerTitle: true,
        title: const Text(
          'Cadastro de pessoas',
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomTextFormField(
              campo: 'Nome completo',
              controlador: controllerNome,
            ),
            const SizedBox(height: 12),
            CustomTextFormField(
              campo: 'Email',
              controlador: controllerEmail,
            ),
            const SizedBox(height: 12),
            CustomTextFormField(
              campo: 'CPF',
              controlador: controllerCPF,
            ),
            const SizedBox(height: 12),
            CustomTextFormField(
              campo: 'Data de nascimento',
              controlador: controllerDataNasc,
            ),
            const SizedBox(height: 12),
            CustomTextFormField(
              campo: 'Telefone',
              controlador: controllerTelefone,
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(500, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  )),
              onPressed: () {
                //print('Botão Cadastrar pressionado!');
                OperationsSupaBaseDB().insertRowSupabase(
                    controllerNome.text,
                    controllerEmail.text,
                    controllerCPF.text,
                    controllerDataNasc.text,
                    controllerTelefone.text);
              },
              child: const Text(
                'Cadastrar',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String campo;
  final TextEditingController controlador;

  const CustomTextFormField({
    super.key,
    required this.campo,
    required this.controlador,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: InputDecoration(
        labelText: campo,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
