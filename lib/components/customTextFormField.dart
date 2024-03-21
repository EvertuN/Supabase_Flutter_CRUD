import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String campo;
  final TextEditingController controlador;
  const CustomTextFormField({super.key, required this.campo, required this.controlador,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controlador,
      decoration: const InputDecoration(
        fillColor: Colors.white,
        labelText: '',
        hintText: '',
        // A borda padrão do TextFormField já é um UnderlineInputBorder,
        // mas você pode personalizá-la como quiser:
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        // Você também pode definir bordas para outros estados, como erro, etc.
      ),
    );
  }
}