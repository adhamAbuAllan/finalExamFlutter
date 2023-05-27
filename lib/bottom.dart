import 'package:flutter/material.dart';
class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    var index = 0;
// setState(() {
//   index;
// });
    print(index);
    return Scaffold(
      body: IndexedStack(
      index: index,

      children: [
        One(),
        Tow(),
      ],
    ),
    bottomNavigationBar:BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value ;
            print(value);
            print(index);
          });
        },
        items: [

      BottomNavigationBarItem(

          icon: Icon(Icons.fireplace_sharp),label: "one"),BottomNavigationBarItem(icon: Icon(Icons.abc_rounded),label: "tow"),
    ]),
    );
  }
}
class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Center(child: Text("one",style: TextStyle(fontSize: 30),)));
  }
}
class Tow extends StatelessWidget {
  const Tow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("tow",style: TextStyle(fontSize: 30),)));
  }
}
