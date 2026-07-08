import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Copa 2026',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CopaPage(),
    );
  }
}

class CopaPage extends StatelessWidget {
  const CopaPage({super.key});

  @override
  Widget build(BuildContext context) {

    const String imagemCopa = 'https://images.unsplash.com/photo-1579952363873-27f3bade9f55?q=80&w=1200&auto=format&fit=crop';

    return Scaffold(
      appBar: AppBar(
        title: const Text('copa do mundo 2026'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Imagem carregada da internet',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Nesta tela, usamos o widget Image.network para buscar uma imagem online relacionada',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ), // Text

            const SizedBox(height: 24),

          Card(
            elevation: 4,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
              Image.network(
              imagemCopa,
              height: 230,
              width: double.infinity,
              fit: BoxFit.cover,

              loadingBuilder: (context, child, loadingprogress) {
                if(loadingprogress == null){
                  return child;
                }
                return SizedBox(
                  height:230,
                  child:Center(
                    child: CircularProgressIndicator(
                      value: loadingprogress.expectedTotalBytes != null
                          ?  loadingprogress.cumulativeBytesLoaded /
                          loadingprogress.expectedTotalBytes!
                          :null,
                    ),
                  ),
                );
              },

              errorBuilder: (context, error, stackTrace){
                return Container(
                    height: 230,
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.error_outline,
                            size: 50,
                            color: Colors.red,
                        ),

                          const SizedBox(height: 8),

                          Text(
                            'Não foi possivel carregar a imagem',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                );
              },
            ),

            const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                children: [
                  Text(
                    'TEMA: futebol e copa 2026',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    'O uso de imagens online permite que o aplicativo carregue conteudos externos'
                        'sem precisar armazenar todos os arquivos dentro de projeto',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
                ),
            )
              ],
            ),
          ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
                onPressed:(){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Imagem carregada usando Image.network!'),
                    ),
                  );
                },
              icon: const Icon(Icons.image),
              label: const Text('ver informação'),
            ),
          ],
        ),
        ),
      ),
    );
  }
}



