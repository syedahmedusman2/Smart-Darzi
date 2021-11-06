

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore_web/cloud_firestore_web.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/bottomAppBar.dart';
import 'package:flutter_ecommerce_app/login.dart';
import 'package:flutter_ecommerce_app/widgets/text_Fields.dart';




class Signup extends StatelessWidget {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // const Signup({Key? key}) : super(key: key);

  static Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  @override
  Widget build(BuildContext context) {
    // UserCredential userCredential;
    RegExp regExp = RegExp("$key: \\[\\d+\\]");
    //validation
    TextEditingController Username = TextEditingController();
    TextEditingController Email = TextEditingController();
    TextEditingController Password = TextEditingController();
    TextEditingController CPassword = TextEditingController();

    GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

    // Future sendData() async {
     

    //   try {
    //     UserCredential userCredential =
    //         await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //       email: Email.text,
    //       password: Password.text,
         
    //     );
    //     await FirebaseFirestore.instance.collection('userData').doc(userCredential.user!.uid).set({
    //         'Username': Username.text.trim(),
    //         'Email': Email.text.trim(),
    //         'userid': userCredential.user!.uid,
    //       });
    //   } on FirebaseAuthException catch (e) {
    //     if (e.code == 'weak-password') {
    //       globalKey.currentState!
    //           .showSnackBar(SnackBar(content: Text("Password is weak")));
    //     } 
    //     else if (e.code == 'email-already-in-use') {
    //        globalKey.currentState!
    //           .showSnackBar(SnackBar(content: Text("The account already exists for that email.")));
    //       // print('The account already exists for that email.');
    //     }
    //   } catch (e) {
    //     // globalKey.currentState!
    //           // .showSnackBar(SnackBar(content: Text('e')));
    //     // print(e);
    //   }
    // }

    void validation()async {
      try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: Email.text,
              password: Password.text);

              FirebaseFirestore.instance.collection(auth.currentUser.uid).doc('userinfo').set({
      "name":Username.text,
      "email": Email.text,
      "password": Password.text
    });
    Email.clear();
    Password.clear();
    Username.clear();
    CPassword.clear();
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BottomBar()));




    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
      

      
      //username validate
      if (Username.text.trim().isEmpty || Username.text.trim() == null) {
        globalKey.currentState
            .showSnackBar(SnackBar(content: Text("UserName is Empty")));
        return;
      }
      //email validate

      if (Email.text.trim().isEmpty || Email.text.trim() == null) {
        globalKey.currentState
            .showSnackBar(SnackBar(content: Text("Email is Empty")));
        return;
      } else if (!Email.text.contains("@") || !Email.text.contains(".")) {
        globalKey.currentState
            .showSnackBar(SnackBar(content: Text("Email is not valid")));
        return ;
      }
//delete tis
      // else if(!regExp.hasMatch("@")){
      //              Navigator.pop(context);
      //              globalKey.currentState!
      //       .showSnackBar(SnackBar(content: Text("Empty")));
      //   return;
      //            }

      //email correction
      // else if (!regExp.hasMatch(Email.text)) {
      //   globalKey.currentState!
      //       .showSnackBar(SnackBar(content: Text("Provide Correct Email")));
      //   return;
      // }
//delete tis

      //password validate
      if (Password.text.trim().isEmpty || Password.text.trim() == null) {
        globalKey.currentState
            .showSnackBar(SnackBar(content: Text("Password is Empty")));
        return;
      }
      if (CPassword.text.trim().isEmpty || CPassword.text.trim() == null) {
        globalKey.currentState
            .showSnackBar(SnackBar(content: Text("Confirm Your Password First")));
        return;
      }
      if (CPassword.text.trim() != Password.text.trim()) {
        globalKey.currentState
            .showSnackBar(SnackBar(content: Text("Match Your Password")));
        return;
      }

      // else{
      //   // sendData();
      // }
      else{
        Navigator.push(context,  MaterialPageRoute(builder: (context) => Login()),);
      }
    }

    return Scaffold(
      
      key: globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: Text("REGISTER"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset(
                'assets/logo.png',
              )),
        
              //delete this
              // Text(
              //   'Register',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontSize: 40,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              //delete this
        
              Column(
                children: [
                  MyTextField(
                    controller: Username,
                    obscureText: false,
                    hintText: 'Username',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: Email,
                    obscureText: false,
                    hintText: 'Email',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: Password,
                    obscureText: true,
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyTextField(
                    controller: CPassword,
                    obscureText: true,
                    hintText: 'Confirm Password',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 160,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36.0),
                                side: BorderSide(color: Colors.red)))),
                    onPressed: () {
                      validation();
                      // delete this
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Login()),
                      // );
                      // delete this
        
                    },
                    child: Text('Register')),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login Now ",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
