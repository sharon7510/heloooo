import 'package:flutter/material.dart';

class StackRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("exam"),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red, Colors.orange, Colors.yellow,]
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                cat(),
                cat(),
                cat(),
                cat(),
                cat(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class cat extends StatelessWidget {
  const cat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.confirmation_number_sharp,color: Colors.white) ,
            Icon(Icons.add_box_sharp,color:Colors.white ) ,
          ],
        ),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyanAccent,),
      margin: EdgeInsets.all(20),
      height: 50,
    );
  }
}

