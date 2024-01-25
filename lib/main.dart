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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Container(color: Colors.amber, child: const Text("One")),
                Expanded(
                    child: Container(
                        color: Colors.cyanAccent, child: const Text("Two"))),
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                        color: const Color.fromARGB(255, 185, 133, 64),
                        child: const Text("Three"))),
                Flexible(
                    flex: 10,
                    child: Container(
                        color: Colors.deepOrangeAccent,
                        child: const Text("Four"))),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FractionallySizedBox(
                    widthFactor: 0.75,
                    child: Container(
                        color:  Colors.red,
                        child: const Text("Five"))),
                FractionallySizedBox(
                    widthFactor: 0.25,
                    child: Container(
                        color: Colors.deepOrangeAccent,
                        child: const Text("Six"))),
              ],
            ),
            const Text(
              'Hello',
            ),
            Text(
              'World',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
