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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Primeira Aplicação'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(17, 70, 107, 1),
              Color.fromRGBO(35, 16, 107, 1),
            ],
          ),
        ),
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                    const CircleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                  )),
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              'Alright George',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Who are we sending money to?',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(158, 233, 174, 1),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 20.0),
                const Text(
                  'New recipient',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.white12),
            const SizedBox(height: 20),
            const PersonItem(
              avatar: Icons.person,
              name: 'Fansoni Muzanzo',
              number: '**** 1253',
              color: Colors.green,
            ),
            const PersonItem(
              avatar: Icons.person,
              name: 'Catharin Gouse',
              number: '**** 1253',
              color: Colors.green,
            ),
            const PersonItem(
              avatar: Icons.person,
              name: 'Nolan Philips',
              number: '**** 1253',
              color: Colors.indigo,
            ),
            const PersonItem(
              avatar: Icons.person,
              name: 'Zaire Schleifer',
              number: '**** 1253',
              color: Colors.pinkAccent,
            ),
            const PersonItem(
              avatar: Icons.person,
              name: 'Marcus Lipshutz',
              number: '**** 1253',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class PersonItem extends StatelessWidget {
  const PersonItem({
    super.key,
    required this.avatar,
    required this.name,
    required this.number,
    this.color,
  });
  final IconData? avatar;
  final String? name;
  final String? number;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color!,
            child: Icon(avatar!),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name!.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 2),
              Text(
                number!.toString(),
                style: const TextStyle(color: Colors.white30),
              )
            ],
          )
        ],
      ),
    );
  }
}
