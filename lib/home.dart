import 'package:clone_netflix/page.dart';
import 'package:flutter/material.dart';
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.network("https://th.bing.com/th?id=OIP.RxdP1VCNzRZ06LT6MMqazQHaB_&w=350&h=94&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"),
          ),

          Container(
            // margin: EdgeInsets.all(10),
            width: 300,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                     hintText: "Username",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                     hintText: "password"
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page(),));
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: Center(child: Text("LOGIN",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),)),
            ),
          )
        ],
      ),
    );
  }
}