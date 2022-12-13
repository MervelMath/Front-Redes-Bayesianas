class Auth {
  double? autenticacaoForte;
  double? autenticacaoMedio;
  double? autenticacaoFraco;

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
      autenticacaoForte: json['Autenticacao(Forte)'],
      autenticacaoMedio: json['Autenticacao(Medio)'],
      autenticacaoFraco: json['Autenticacao(Fraco)']);

  Auth(
      {this.autenticacaoForte, this.autenticacaoMedio, this.autenticacaoFraco});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Autenticacao(Forte)'] = this.autenticacaoForte;
    data['Autenticacao(Medio)'] = this.autenticacaoMedio;
    data['Autenticacao(Fraco)'] = this.autenticacaoFraco;
    return data;
  }
}
