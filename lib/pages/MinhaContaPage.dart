import 'package:flutter/material.dart';
// import 'package:prontuario_medico/widgets/styles/CustomColor.dart';
// import 'package:prontuario_medico/widgets/styles/CustomStyleButton.dart';

class MinhaContaPage extends StatefulWidget {
  const MinhaContaPage({Key? key}) : super(key: key);

  @override
  State<MinhaContaPage> createState() => _MinhaContaPageState();
}

class _MinhaContaPageState extends State<MinhaContaPage> {
  final String nome = "João";
  final String sobrenome = "Silva";
  final String cpf = "123.456.789-00";
  final String sexo = "Masculino";
  final String dataNascimento = "01/01/1990";
  final String nomeSocial = "João Silva";
  final String endereco = "Rua Principal, 123";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("Minha Conta"),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 190,
                        height: 190,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/46/46196.png"),
                            fit: BoxFit.fitWidth,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Sua consulta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.white30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _buildInfoRow("Nome", nome),
                  _buildInfoRow("Sobrenome", sobrenome),
                  _buildInfoRow("CPF", cpf),
                  _buildInfoRow("Sexo", sexo),
                  _buildInfoRow("Data de Nascimento", dataNascimento),
                  _buildInfoRow("Nome Social", nomeSocial),
                  _buildInfoRow("Endereço", endereco),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
