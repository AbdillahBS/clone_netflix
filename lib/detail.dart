import 'package:clone_netflix/model/model.dart';
import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  const detail({super.key, required this.list});
  final Data list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          list.jdl,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.red,
          ),
          maxLines: 2,
        ),
        toolbarHeight: 70,
      ),
      body: ListView(
        
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(list.img),
              SizedBox(height: 20),
              Text(
                "RATING  " + list.rating,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(list.deskripsi,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.left,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
