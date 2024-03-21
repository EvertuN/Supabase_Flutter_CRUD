import 'package:supabase_flutter/supabase_flutter.dart';

class OperationsSupaBaseDB {
  final supabase = Supabase.instance.client;

  Future<void> insertRowSupabase(String nome, String email, String CPF,
      String dt_nasc, String telefone) async {
    //print('Inserindo dados no Supabase: $nome, $email, $CPF, $dt_nasc, $telefone');
    await supabase.from('cadastrarPessoas').insert({
      'nome': nome,
      'email': email,
      'CPF': CPF,
      'dt_nasc': dt_nasc,
      'telefone': telefone
    });
  }
}
