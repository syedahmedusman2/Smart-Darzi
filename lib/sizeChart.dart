import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/sizeChartList.dart';
import 'package:flutter_ecommerce_app/size_dialog.dart';

// class SizedChart extends StatefulWidget {
//   // const SizedChart({ Key? key }) : super(key: key);
//   @override
//   State<SizedChart> createState() => _SizedChartState();
// }

// class _SizedChartState extends State<SizedChart> {
//   var output = '';

//   var lst = ['1','2','3'];
//   TextEditingController inputcontroller = new TextEditingController();
//   String getvalue;

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text('Sized Chart'),
//         ),
//         body: Container(
//           height: MediaQuery.of(context).size.height * 0.7,
//           child: ListView.builder(
//             itemCount: lst.length,
//             itemBuilder: (context,index){
//               return Container(
//                 height: MediaQuery.of(context).size.height * 0.2,
//                 color: Colors.amber[50],
//                 margin: EdgeInsets.only(top: 15),
//                 child: ListTile(

//                   title: Text('${lst[index]}'),
//                 ),
//               );
//           })
//         ),

//         // ListView.builder(
//         //     itemCount: lst.length,
//         //     itemBuilder: (context, index) {
//         //       return Container(
//         //         height: 50,
//         //         color: Colors.amber,
//         //         margin: EdgeInsets.only(top: 20),
//         //         child: ListTile(
//         //           title: Text("${lst[index]}"),
//         //         ),
//         //       );
//         //     }),

//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             showDialog(
//                 context: context,
//                 builder: (context) {
//                   return AlertDialog(
//                     title: Text("Add Size"),
//                     content: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: TextField(
//                             controller: inputcontroller,
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'Size Name',
//                               hintText: 'Enter Size Name',

//                             ),
//                             onChanged: (value) {
//                               output = value;
//                             },
//                           ),
//                         ),

//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'Length',
//                               hintText: 'Enter length',
//                             ),
//                             onChanged: (value) {
//                               output = value;
//                             },
//                           ),
//                         ),

//                           Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'Shoulder',
//                               hintText: 'Enter Shoulder',
//                             ),
//                             onChanged: (value) {
//                               output = value;
//                             },
//                           ),
//                         ),

//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'Chest',
//                               hintText: 'Enter Chest',
//                             ),
//                             onChanged: (value) {
//                               output = value;
//                             },
//                           ),
//                         ),

//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'Waist',
//                               hintText: 'Enter Waist',

//                             ),
//                             onChanged: (value) {
//                               output = value;
//                             },
//                           ),
//                         ),

//                         // Padding(
//                         //   padding: const EdgeInsets.all(10.0),
//                         //   child: TextField(
//                         //     decoration: InputDecoration(
//                         //       border: OutlineInputBorder(),
//                         //       labelText: 'Sleeve',
//                         //       hintText: 'Enter Sleeve',
//                         //     ),
//                         //     onChanged: (value) {
//                         //       output = value;
//                         //     },
//                         //   ),
//                         // ),

//                         // Padding(
//                         //   padding: const EdgeInsets.all(10.0),
//                         //   child: TextField(
//                         //     decoration: InputDecoration(
//                         //       border: OutlineInputBorder(),
//                         //       labelText: 'Bottom',
//                         //       hintText: 'Enter Bottom',
//                         //     ),
//                         //     onChanged: (value) {
//                         //       output = value;
//                         //     },
//                         //   ),
//                         // ),

//                         Text('$getvalue')
//                         // TextField(
//                         //   decoration: new InputDecoration.collapsed(
//                         //     border: OutlineInputBorder(

//                         //     ),
//                         //       hintText: 'Enter Wrest'),
//                         //   onChanged: (value) {
//                         //     output = value;
//                         //   },
//                         // ),
//                       ],
//                     ),
//                     actions: [
//                       ElevatedButton(
//                           onPressed: () {
//                             setState() {
//                               // lst.add(output);
//                               getvalue = inputcontroller.text;
//                             }
//                           },
//                           child: Text("Save"))
//                     ],
//                   );
//                 });

//           },

//           child: Text("Add"),
//         ),

//       );

// }

//================================

// class MyFlutterList extends StatefulWidget {
//   // const MyFlutterList({ Key? key }) : super(key: key);

//   @override
//   _MyFlutterListState createState() => _MyFlutterListState();
// }

// class _MyFlutterListState extends State<MyFlutterList> {
//   @override
//   Widget build(BuildContext context) {

//     void showUserDialog(){
//       showDialog(context: context, builder: (_){
//         return AlertDialog(
//           content: SizeDialog(),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10)),
//         );

//       });
//     }

//     List<Size> userlist = [];

//     void addUserData(Size user){
//       setState(() {
//         userlist.add(user);
//       });
//     }

//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: showUserDialog,
//       child: Icon(Icons.add),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height * 0.75,
//         child: ListView.builder(
//           itemCount: userlist.length,
//           itemBuilder: (context,index){
//             return Card(
//               child: ListTile(
//                 title: Text(userlist[index].),
//                 subtitle: Text(userlist[index].email),
//                 trailing: Text(userlist[index].phone),
//               ),
//             );

//         }),
//       ),
//     );
//   }
// }

//===============================

class MyFlutterList extends StatefulWidget {
  // const MyFlutterList({Key? key}) : super(key: key);

  @override
  _MyFlutterListState createState() => _MyFlutterListState();
}

class _MyFlutterListState extends State<MyFlutterList> {
  List<User> userList = [];

  @override
  Widget build(BuildContext context) {
    void addUserData(User user) {
      setState(() {
        userList.add(user);
      });
    }

    void showUserDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: AddUserDialog(addUserData),
          );
        },
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDialog,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Size Chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              margin: EdgeInsets.all(4),
              child: ListTile(
                title: Text(
                  "Small Tshirt",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Length: 24.5 Shoulder: 15.5 Chest: 18 Sleeves: 7 Waist: 17 Bottom: 17.5",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.10,
              margin: EdgeInsets.all(4),
              child: ListTile(
                title: Text(
                  "Medium Tshirt",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Length: 27 Shoulder: 16 Chest: 20.5 Sleeves: 7.5 Waist: 20 Bottom: 21",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
             Container(
              height: MediaQuery.of(context).size.height * 0.10,
              margin: EdgeInsets.all(4),
              child: ListTile(
                title: Text(
                  "Large Tshirt",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Length: 27 Shoulder: 19 Chest: 21.5 Sleeves: 8.5 Waist: 21.5 Bottom: 21.5",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text("Your New Sizes", style: TextStyle(
                    fontSize: 24,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),),
            SizedBox(
              height: 5,
            ),
            Container(
              
              height: 400,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    
                    margin: EdgeInsets.all(4),
                    elevation: 8,
                    child: ListTile(
                      title: Text(
                        userList[index].sizename,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Length: " +
                            userList[index].slength +
                            " Shoulder: " +
                            userList[index].sshoulder +
                            " Chest: " +
                            userList[index].schest +
                            " Waist: " +
                            userList[index].ssleeve +
                            " Sleeve: " +
                            userList[index].swaist +
                            " Bottom: " +
                            userList[index].sbottom,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      // trailing: Text(
                      //   userList[index].phoneNo,
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //   ),
                      // ),
                    ),
                  );
                },
                itemCount: userList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
