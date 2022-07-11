import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:requisicaocep/requisicaocep.dart';

void main(List<String> arguments) async {
  final url = Uri.https(
    'viacep.com.br',
    'ws/68373070/json/',
  );

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final res = jsonDecode(response.body);
    print(res);
  }
}
