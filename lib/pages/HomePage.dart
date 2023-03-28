import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prontuario_medico/widgets/CustomDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("lib/assets/images/background.jpg"),
            fit: BoxFit.cover
        ),
      ),
      child:  Scaffold(
          backgroundColor: Colors.transparent,
          drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 25,
              ),
              AppBar(
                backgroundColor: const Color.fromARGB(255, 58, 58, 58),
                title: const Text('Sua consulta'),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {

                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
