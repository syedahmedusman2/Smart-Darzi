import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/bottomAppBar.dart';
import 'package:flutter_ecommerce_app/signup.dart';
import 'package:flutter_ecommerce_app/widgets/text_Fields.dart';

class Login extends StatelessWidget {
  // const Login({Key? key}) : super(key: key);
  // Widget textField(
  //     {required String hintText,
  //     required IconData icon,
  //     required Color iconColor}) {
  //   return TextFormField(
  //     decoration: InputDecoration(
  //         prefixIcon: Icon(
  //           icon,
  //           color: iconColor,
  //         ),
  //         hintText: hintText,
  //         hintStyle: TextStyle(color: Colors.blue),
  //         enabledBorder:
  //             UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
  //   );
  // }
  login(BuildContext context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: EmailCont.text,
        password: PasswordCont.text,
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomBar()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  //validation
  // TextEditingController Username = TextEditingController();
  TextEditingController EmailCont = TextEditingController();
  TextEditingController PasswordCont = TextEditingController();
  // TextEditingController CPassword = TextEditingController();

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
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
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  MyTextField(
                    controller: EmailCont,
                    obscureText: false,
                    hintText: 'Email',
                  ),
                  // textField(
                  //     hintText: "Email",
                  //     icon: Icons.person_outline,
                  //     iconColor: Colors.blue),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: PasswordCont,
                    obscureText: true,
                    hintText: 'Password',
                  ),
                ],
              ),
              SizedBox(
                height: 30,
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
                      login(context);
                      
                    },
                    child: Text('Login')),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New User? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Register Now ",
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
