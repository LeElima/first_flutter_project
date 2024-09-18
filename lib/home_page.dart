import 'package:first_project/app_controller.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  @override
  // State<StatefulWidget> createState() {
  //   return HomePageState();
  // }
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto'),
        backgroundColor: Colors.red,
        actions: [
          //Botões na lateral direita
          CustomSwitch()
        ],
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contador : ${counter}"),
            CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      // body: Center(
      //       child: GestureDetector(
      //           child: Text("Contador: $counter", 
      //                       style: TextStyle(
      //                               color: Colors.black,
      //                               fontSize: 50
      //                               )),
      //           onTap: () {
      //             setState(() {
      //               counter ++;
      //             });
      //           },
      //         )
      //       ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter ++;
          });
        }),
    );
    // return  Container(
    //     child: Center(
    //       child: GestureDetector(
    //         child: Text("Contador: $counter"),
    //         onTap: () {
    //           setState(() {
    //             counter ++;
    //           });
    //         } ,
    //         )
    //         ),
    //   );
  }

}

class CustomSwitch extends StatelessWidget {
  // const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
            value: AppController.instance.isDarkTheme, 
            onChanged: (value){
                AppController.instance.changeTheme();
              
            });
  }
}