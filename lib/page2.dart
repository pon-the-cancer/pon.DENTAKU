import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('page2'),),
         body: Container(
           alignment: Alignment.center,
           child: Column(
             children: [
             SizedBox(height: 40,),
             ElevatedButton(
             onPressed: ()=>Navigator.of(context).pop(),
               child: Text('back',),
                style: ButtonStyle(
                 padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                 shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
             ),
           ),
           ],
         ),
    )
    );
  }
}
