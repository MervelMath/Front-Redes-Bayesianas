import 'package:flutter/material.dart';
import 'package:materiais_esportivos_app/Model/Auth.dart';
import 'package:materiais_esportivos_app/Model/Query.dart';

import 'EquipamentoComponents/Operacoes/CreateQuery.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Auth>? _futureQuery;
  Query querryModel = Query();
  QueryEvidence querryEvModel = QueryEvidence();
  bool light1 = false;
  bool light2 = false;
  bool light3 = false;
  bool light4 = false;
  bool light5 = false;
  bool light6 = false;
  bool light7 = false;
  bool light8 = false;
  bool light9 = false;
  bool light10 = false;
  bool light11 = false;
  bool light12 = false;
  bool light13 = false;
  bool light14 = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalho de Sistemas Distribuídos',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trabalho de Sistemas Distribuídos'),
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 10,
                      ),
                      const Text(
                          "O sistema de tuplas possui atualização (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "O sistema de tuplas é case sensitive (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                        "O sistema de tuplas é alfanumérico (sim/não)?",
                      ),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "O sistema de tuplas possui número mínimo de caracteres (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "O sistema de tuplas obriga o uso de caractere especial (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "O sistema de biometria possui leitor de íris (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui leitor de digital com anti-fraude (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui leitor de digital sem anti-fraude (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui leitor facial com anti-fraude (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui leitor facial sem anti-fraude (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "O sistema possui desbloqueio por propriedade, possui celular com controle de acesso (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui debloqueio por celular sem controle de acesso (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui desbloqueio por hard key (sim/não)?"),
                      Container(
                        height: 24,
                      ),
                      const Text(
                          "Senão, possui desbloqueio por cartão (sim/não)?")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Switch(
                          value: light1,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light1 = value;
                              querryEvModel.atualizacao =
                                  value == true ? 'Sim' : 'Nao';
                              print(querryEvModel.atualizacao);
                            });
                          }),
                      Switch(
                          value: light2,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light2 = value;
                              querryEvModel.caseSensitive =
                                  value == true ? 'Sim' : 'Nao';
                            });
                          }),
                      Switch(
                          value: light3,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light3 = value;
                              querryEvModel.alfanumerico =
                                  value == true ? 'Sim' : 'Nao';
                            });
                          }),
                      Switch(
                          value: light4,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light4 = value;
                              querryEvModel.minimoCaracteres =
                                  value == true ? 'Sim' : 'Nao';
                            });
                          }),
                      Switch(
                          value: light5,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light5 = value;
                              querryEvModel.caractereEspecial =
                                  value == true ? 'Sim' : 'Nao';
                            });
                          }),
                      Switch(
                          value: light6,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light6 = value;
                              if (value) {
                                querryEvModel.biometria = 'Iris';
                                light7 = false;
                                light8 = false;
                                light9 = false;
                                light10 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light7,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light7 = value;
                              if (value) {
                                querryEvModel.biometria = 'DigitalAF';

                                light6 = false;
                                light8 = false;
                                light9 = false;
                                light10 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light8,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light8 = value;
                              if (value) {
                                querryEvModel.biometria = 'DigitalSAF';
                                light6 = false;
                                light7 = false;
                                light9 = false;
                                light10 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light9,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light9 = value;
                              if (value) {
                                querryEvModel.biometria = 'FacialAF';
                                light6 = false;
                                light7 = false;
                                light8 = false;
                                light10 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light10,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light10 = value;
                              if (value) {
                                querryEvModel.biometria = 'FacialSAF';
                              }
                              light6 = false;
                              light7 = false;
                              light9 = false;
                              light8 = false;
                            });
                          }),
                      Switch(
                          value: light11,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light11 = value;
                              if (value) {
                                querryEvModel.propriedade = 'CelularCA';
                                light12 = false;
                                light13 = false;
                                light14 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light12,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light12 = value;
                              if (value) {
                                querryEvModel.propriedade = 'CelularSCA';
                                light11 = false;
                                light13 = false;
                                light14 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light13,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light13 = value;
                              if (value) {
                                querryEvModel.propriedade = 'HardKey';
                                light11 = false;
                                light12 = false;
                                light14 = false;
                              }
                            });
                          }),
                      Switch(
                          value: light14,
                          activeColor: Colors.red,
                          onChanged: (bool value) {
                            setState(() {
                              light14 = value;
                              if (value) {
                                querryEvModel.propriedade = 'Cartao';
                                light11 = false;
                                light13 = false;
                                light12 = false;
                              }
                            });
                          })
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () => {
                                _futureQuery =
                                    createQuery(querryModel, querryEvModel)
                              },
                          icon: const Icon(Icons.send))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
