import 'package:clone_netflix/detail.dart';
import 'package:clone_netflix/model/model.dart';
import 'package:flutter/material.dart';

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
                height: 70,
                child: Row(
                  children: [
                    Image.network(
                        'https://th.bing.com/th?q=Netflix+Logo+No+Background&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-ID&cc=ID&setlang=en&adlt=strict&t=1&mw=247'),
    
                    Image.asset("assets/th.jpeg",width: 100,)
                  ],
                )),
            Text(
              "Lists of Movie : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black.withOpacity(0.5)
              // color: 
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dt.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final Data list = dt[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => detail(list: list),
                          ));
                    },
                    child: Column(
                      children: [
                        Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(16),
                            leading: Image.network(
                              list.img,
                              height: double.infinity,
                              fit: BoxFit.cover,
                               alignment: Alignment.center,
                            ),
                            title: Text(list.jdl),
                            subtitle: Text("RATING  " + list.rating),
                          ),
                        ),
                        Divider(thickness: 2)
                      ],
                    ),
                    
                  );
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         // padding: EdgeInsets.all(10),
                  //         height: 250,
                  //         child: Image.network(list.img,fit: BoxFit.cover,)),
                  //       Expanded(
                  //         child: InkWell(
                  //           onTap: () {
                  //             Navigator.push(context, MaterialPageRoute(builder: (context) => detail(list:list),));
                  //           },
                  //           child: Container(
                  //             margin: EdgeInsets.all(10),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(list.jdl,style: TextStyle(
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 30
                  //                 ),),
                  //                 SizedBox(height: 15),
                  //                 Text("Rating "+list.rating,style: TextStyle(
                  //                   fontSize: 25,
                  //                 ),)
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // );
                },
              ),
           
            )
          ],
        ),
      ),
    );
  }
}
