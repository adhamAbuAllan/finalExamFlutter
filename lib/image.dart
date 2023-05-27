import 'package:flutter/material.dart';
class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}
var show = false;
class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    show == true ?
    ClipRRect(
      child: Image(image: AssetImage("unnamed.jpg"),),
    ):ElevatedButton(onPressed: (){
      setState(() {
        show = true;
      });
    }, child: Text("Show")),

      );
  }
}
