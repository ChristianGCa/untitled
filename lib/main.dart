import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget responsável pelas configurações do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// Widget responsável pela página do aplicativo
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print('Decrement');
  }

  void increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pode entrar',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text('0',
                  style: TextStyle(
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
        ));
  }
}
