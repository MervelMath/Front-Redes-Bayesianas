import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:materiais_esportivos_app/Model/Query.dart';
import 'dart:async';

import '../../Model/Auth.dart';

Future<Auth> createQuery(Query querryModel, QueryEvidence queryEv) async {
  final response = await http.post(
    Uri.parse('http://slackbot115.pythonanywhere.com/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
      <String, dynamic>{
        "query_variable": ["Autenticacao"],
        "query_evidence": {
          "CaractereEspecial": queryEv.caractereEspecial == null
              ? "Nao"
              : queryEv.caractereEspecial,
          "MinimoCaracteres": queryEv.minimoCaracteres == null
              ? "Nao"
              : queryEv.minimoCaracteres,
          "Alfanumerico":
              queryEv.alfanumerico == null ? "Nao" : queryEv.alfanumerico,
          "CaseSensitive":
              queryEv.caseSensitive == null ? "Nao" : queryEv.caseSensitive,
          "Atualizacao":
              queryEv.atualizacao == null ? "Nao" : queryEv.atualizacao,
          "Biometria": queryEv.biometria == null ? "Nao" : queryEv.biometria,
          "Propriedade":
              queryEv.propriedade == null ? "Nao" : queryEv.propriedade
        },
      },
    ),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body.toString());
    return Auth.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to update album.');
  }
}
