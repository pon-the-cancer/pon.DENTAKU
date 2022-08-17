import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercise 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Demo Home Page'),),
        body: const MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController valueController = TextEditingController();
  TextEditingController winController = TextEditingController();
  var int_valueController = 0;
  var int_winController = 0;
  double sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                 child: SizedBox(
                   width: 200.0,
                   height: 200.0,
                   child: TextField(
                     controller: valueController,
                     autofocus: true,
                     textAlign: TextAlign.center,
                   ),
                    ),
                     ),
                Expanded(
                    child: SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: TextField(
                        controller: winController,
                        autofocus: true,
                        textAlign: TextAlign.center,
                      ),
                       ),
                        ),
                Expanded(
                    child: SizedBox(
                     child: Text('結果:$sum')
                    ),
                     ),
                      ],
                       ),

            Row(
              children: [
                SizedBox(width: 140,),
                ElevatedButton(
                  onPressed: (){
                  setState(() {
                    print(sum = double.parse(valueController.text) + double.parse(winController.text));
                  });
                    },
                  child: const Text('+'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                  ),
                   ),
                const SizedBox(width: 50,),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      print(sum = double.parse(valueController.text) - double.parse(winController.text));
                    });
                      },
                  child: const Text('-'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                  ),
                   ),
                const SizedBox(width: 50,),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      print(sum = double.parse(valueController.text) * double.parse(winController.text));
                    });
                      },
                  child: const Text('*'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                  ),
                   ),
                const SizedBox(width: 50,),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      print(sum = int.parse(valueController.text) / int.parse(winController.text));
                    });
                      },
                  child: const Text('÷'),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


