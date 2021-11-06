import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/widgets/text_Fields.dart';
// @dart=2.9
class UserPage extends StatelessWidget {
  // const UserPage({ Key? key }) : super(key: key);
 final String name;
 final String email;
 
 final String urlImage;

const UserPage({
  Key key,
  this.name,
   this.email,

   this.urlImage, 
}) : super(key: key);


  @override
  Widget build(BuildContext context)=> Scaffold (
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text(name),
      centerTitle: true,
    ),
    body: Image.network(
      urlImage,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );
    
  }


  class GetUserName extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    CollectionReference users = FirebaseFirestore.instance.collection(auth.currentUser.uid);

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc('userinfo').get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data() as Map<String, dynamic>;
          return Text("Name: ${data['name']} Email: ${data['email']}");
        }

        return Text("loading");
      },
    );
  }
}
