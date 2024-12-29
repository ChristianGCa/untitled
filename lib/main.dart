import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget responsável pelas configurações do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() { // Para indicar o widget que o estado mudou, para ele mostrar
                  // o número atualizado no app
      count--;
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {

    print('Build');
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/icecream.png'),
                fit: BoxFit.cover, // Explore os tipos de ajuste de imagens
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pode',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text('$count',
                    style: const TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                    )),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 60),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  onPressed: decrement,
                  child: Text(
                    'Saiu',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                const SizedBox(width: 32),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 60),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  onPressed: increment,
                  child: Text(
                    'Entrou',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}
