import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My profile Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      home: MyHomePage(title: 'My profile Flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
        centerTitle: true,
        leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // widget pour le profil
            _widgetProfil(context),

            // widget pour le les stat
            Row(
              children: [
                _widgetStat(context),
                _widgetStat(context),
                _widgetStat(context)
              ],
            )

            // widget pour les competences
            Column(
              children: [
                _widgetSkill(context),
                _widgetSkill(context),
                _widgetSkill(context),
                _widgetSkill(context)
              ],
            )
          ]
        )
      ),
    );
  }

  // widget pour le profile du user
  Widget _widgetProfil(BuildContext context) {
    return Column(
      children: [
        Center(
          //padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage(
                    'data:image/jpeg;base64,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',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        Text(
          "Jean Dupont",
          style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        Text(
          "Développeur Flutter",
          style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        Text(
          "Dèveloppeur débutant enthousiaste pour flutter",
          style: TextStyle(fontSize: 14, color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
