import 'dart:convert';

import 'package:http/http.dart' as http;

void main(){

  final cepLocal = Busca();

  cepLocal.buscar('68373070');
}

class Busca {
  Future buscar(String cep) async {
    final url = Uri.https(
      'viacep.com.br',
      'ws/$cep/json/',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final res = jsonDecode(response.body);
      print(res['logradouro']);
    }
  }
}
