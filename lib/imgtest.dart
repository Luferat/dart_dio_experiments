import 'package:flutter/material.dart';

// Importa as páginas do aplicaivo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Apps Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: '/',

      routes: {
        // Página inicial
        '/': (context) => const HomePage(),

        // Página não implementada
        //'/test': (context) => const TestPage(),

        // Página stateless
        //'/stateless_model': (context) => const StatelessModelPage(),

        // Página stateful
        //'/stateful_model': (context) => const StatefulModelPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Página Inicial',

          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),


      body: Container(
        // Define a imagem de fundo para todo o Container
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo.png'), // Caminho da sua imagem
            fit: BoxFit.cover, // Faz a imagem cobrir todo o espaço, cortando se necessário
          ),
        ),
        // Opcional: Adicione um gradiente ou uma cor semi-transparente por cima da imagem
        // para melhorar a legibilidade do texto.
        foregroundDecoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3), // Exemplo: uma camada escura semi-transparente
        ),
        // Adicione o conteúdo da sua página aqui
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Bem-vindo!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Cores claras para o texto no fundo escuro
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Esta é uma página com uma imagem de fundo.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),


      bottomNavigationBar: const BottomAppBar(
        color: Colors.blue,
        child: SizedBox(
          height: 50.0,
          child: Center(
            child: Text(
              'Rodapé do Aplicativo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}