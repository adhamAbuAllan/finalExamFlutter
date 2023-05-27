import 'package:final_exam/pagesRoutes.dart';
import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings;

    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text("$i"),
          ElevatedButton(onPressed: (){

            setState(() {
              i++;
            });
          }, child: Text("Inc")),
          ElevatedButton(onPressed: () async {
         var a =  await Navigator.pushNamed(context, PagesRoutes.home,arguments:{

              "data":i

            });


         setState(() {
           data?.name;
           data?.arguments;
         });


          }, child: Text("back"))
        ],
      )),
    );
  }
}
