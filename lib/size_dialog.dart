// import 'package:flutter/material.dart';

// class SizeDialog extends StatefulWidget {
//   // const SizeDialog({ Key? key }) : super(key: key);

//   @override
//   _SizeDialogState createState() => _SizeDialogState();
// }

// class _SizeDialogState extends State<SizeDialog> {
//   @override
//   Widget build(BuildContext context) {
//     Widget buildTextfield(String hint, TextEditingController controller ){

//       return Container(
//         child: TextField(
//           decoration: InputDecoration(
//             labelText: hint,
//             border: OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.black87))
//           ),
//           controller: controller,
//         ),
//       );
//     }

//     var usernameController = TextEditingController();
//     var emailController = TextEditingController();
//     var phoneController = TextEditingController();



//     return Container(
//       height: MediaQuery.of(context).size.height * 0.2,
//       padding: EdgeInsets.all(8),
//       color: Colors.amber[50],
//       margin: EdgeInsets.only(top: 15),

//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Text('add size'),
      
//             buildTextfield('Username', usernameController),
//             buildTextfield('Email', emailController),
//             buildTextfield('Phone', phoneController),
      
//             ElevatedButton(onPressed: (){}, child: Text("Add User"))
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

import 'sizeChartList.dart';

class AddUserDialog extends StatefulWidget {

  final Function(User) addUser;

  AddUserDialog(this.addUser);

  @override
  _AddUserDialogState createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {


  @override
  Widget build(BuildContext context) {

    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black38,
              ),
            ),
          ),
          controller: controller,
        ),
      );
    }

    var sizeNameController = TextEditingController();
    var slengthController = TextEditingController();
    var sshoulderController = TextEditingController();
    var schestController = TextEditingController();
    var ssleeveController = TextEditingController();
    var swaistController = TextEditingController();
    var sbottomController = TextEditingController();





    return Container(
      padding: EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Add New Size',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.blueGrey,
              ),
            ),
            buildTextField('Size name', sizeNameController),
            buildTextField('Length', slengthController),
            buildTextField('Shoulder', sshoulderController),
            buildTextField('Chest', schestController),
            buildTextField('Sleeves', ssleeveController),
            buildTextField('Waist', swaistController),
            buildTextField('Bottom', sbottomController),




            ElevatedButton(
              onPressed: () {

                final user = User(sizeNameController.text, slengthController.text,
                    sshoulderController.text, schestController.text,
                    ssleeveController.text, swaistController.text,
                    sbottomController.text);
                widget.addUser(user);
                Navigator.of(context).pop();

              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}