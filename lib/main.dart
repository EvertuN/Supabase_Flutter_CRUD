import 'package:flutter/material.dart';
import 'package:mobile_crud_supabase/pages/paginaInicial.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  //print('Iniciando o Supabase');
  await Supabase.initialize(
    url: 'URL_AQUI',
    anonKey:
        'anon_key',
  );

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PaginaInicial(),
  ));
}
