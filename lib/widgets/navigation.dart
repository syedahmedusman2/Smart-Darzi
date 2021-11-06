import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/login.dart';
import 'package:flutter_ecommerce_app/orderHistory.dart';
import 'package:flutter_ecommerce_app/signup.dart';
import 'package:flutter_ecommerce_app/sizeChart.dart';
import 'package:flutter_ecommerce_app/userpage.dart';


class NavigationDrawerWidget extends StatefulWidget {
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  FirebaseAuth auth = FirebaseAuth.instance;
  // var name;
  // var email;

  // getdata()async{
  //   FirebaseFirestore.instance.collection(auth.currentUser.uid).get().then((value){
  //     setState(() {
  //       name = value.data()['name'];
  //       email = value.data()['email'];
        
  //     });
  //   });
  // }/
var name = 'User';

   var email = 'abc@gmail.com';

    final urlImage = 'assets/pic.jpg';

  final padding = EdgeInsets.symmetric(horizontal: 10);

  @override
  Widget build(BuildContext context) {
 


    return Drawer(
      child: Material(
        color: Colors.blue,
        // color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: [
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () =>
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> UserPage(
                  name:name,
                  email:email,
                  urlImage: urlImage,
                )
                ))
            ),





            SizedBox(
              height: 20,
            ),
            buildMenuItem(
              text: 'Order History',
              icon: Icons.history_edu_outlined,
              onClicked: ()=> selectedItem(context, 0 )
            ),
            SizedBox(
              height: 20,
            ),
            GetUserName(),
            buildMenuItem(
              text: 'Sized Chart',
              icon: Icons.add_chart_outlined,
              onClicked: ()=> selectedItem(context, 1 )

            ),
            SizedBox(
              height: 20,
            ),
            buildMenuItem(
              text: 'Wish List',
              icon: Icons.favorite_border_outlined,
              onClicked: ()=> selectedItem(context, 2 )

            ),
             SizedBox(
              height: 20,
            ),
            buildMenuItem(
              text: 'FeedBack',
              icon: Icons.feed_outlined,
              onClicked: ()=> selectedItem(context, 3 )

            ),
            const SizedBox(height: 14,),
             Divider(color: Colors.white),
            const SizedBox(height: 14,),

            SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'LogOut',
              icon: Icons.logout_outlined,
              onClicked: ()=> selectedItem(context, 4 )

            ),
            

          ],
        ),
      ),
    );
  }

Widget buildHeader({
   String urlImage,
   String name,
   String email,
   VoidCallback onClicked,
}) =>
  InkWell(
    onTap: onClicked,
    child: Container(
      padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(urlImage),
          ),
          SizedBox(
            width: 20,
            
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
              style:TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),

              const SizedBox(
                height:4
              ),

              Text(email,
              style:TextStyle(
                fontSize: 14,
                color: Colors.white,
              )),
              // Spacer(),
              // CircleAvatar(
              //   radius: 14,
              //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              //   child: Icon(Icons.add_comment_outlined,
              //   color: Colors.white,
              //   ),
              // ),
            ],
          ),

      ],),
      
      ),
  );

  Widget buildMenuItem({
     String text,
     IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();

    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => orderHistory()
          )
          );
      break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyFlutterList()
          ));
      break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Signup()
          ));
      break;
    }
  }
}
