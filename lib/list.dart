import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  var names = ["Ali", "Rani", "Sami",];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () {
          Fluttertoast.showToast(msg: "${names[index]}");
        },
       child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         mainAxisSize: MainAxisSize.min,
         children: [
           Text("${names[index]}",style: TextStyle(
             fontSize: 30
           )),
        Expanded(child: Text("")),
         ],
       ),
      );
    },
        // itemCount: names.length,
        // itemBuilder: (ctx) {
        // return names.contains()
        // }

        ),);
  }
}
