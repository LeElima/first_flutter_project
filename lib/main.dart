import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Center(
      child: Text(
            'Texto', 
            textDirection: TextDirection.rtl, 
            style: TextStyle(color: Colors.white, fontSize: 50.0),
          ),
    ) ,
        );
  }

}