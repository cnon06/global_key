import 'package:flutter/material.dart';
import 'package:global_key/score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var counterGlobalKey = GlobalKey<CounterTextState>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Key"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            CounterText(
              key: counterGlobalKey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterGlobalKey.currentState!.increase();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// class CounterText extends StatefulWidget {
//   CounterText({Key? key}) : super(key: key);

//   @override
//   State<CounterText> createState() => _CounterTextState();
// }

// class _CounterTextState extends State<CounterText> {
//   int sayac = 0;

//   void sayacArtir() {
//     sayac++;
//     setState(() {
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(sayac.toString(), style: TextStyle(fontSize: 25),);
//   }
// }