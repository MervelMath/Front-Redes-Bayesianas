class Query {
  String? queryVariable;
  QueryEvidence? queryEvidence;

  Query({this.queryVariable, this.queryEvidence});

  Query.fromJson(Map<String, dynamic> json) {
    queryVariable = json['query_variable'].cast<String>();
    queryEvidence = json['query_evidence'] != null
        ? QueryEvidence.fromJson(json['query_evidence'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query_variable'] = 'Autenticacao';
    if (queryEvidence != null) {
      data['query_evidence'] = queryEvidence!.toJson();
    }
    return data;
  }
}

class QueryEvidence {
  String? caractereEspecial;
  String? minimoCaracteres;
  String? alfanumerico;
  String? caseSensitive;
  String? atualizacao;
  String? biometria;
  String? propriedade;

  QueryEvidence(
      {this.caractereEspecial,
      this.minimoCaracteres,
      this.alfanumerico,
      this.caseSensitive,
      this.atualizacao,
      this.biometria,
      this.propriedade});

  QueryEvidence.fromJson(Map<String, dynamic> json) {
    caractereEspecial = json['CaractereEspecial'];
    minimoCaracteres = json['MinimoCaracteres'];
    alfanumerico = json['Alfanumerico'];
    caseSensitive = json['CaseSensitive'];
    atualizacao = json['Atualizacao'];
    biometria = json['Biometria'];
    propriedade = json['Propriedade'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CaractereEspecial'] = caractereEspecial;
    data['MinimoCaracteres'] = minimoCaracteres;
    data['Alfanumerico'] = alfanumerico;
    data['CaseSensitive'] = caseSensitive;
    data['Atualizacao'] = atualizacao;
    data['Biometria'] = biometria;
    data['Propriedade'] = propriedade;
    return data;
  }
}
