import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  // final Icon icon;
   String imageName;
   String name;

  CategoryCard( this.imageName,this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.blueGrey
            )
          ],
        ),
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // icon,
              Image.asset(imageName, width: 40,),
              SizedBox(height: 10,),
              Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
              color: Colors.blue))
            ],
          ),
        ),
      ),
    );
  }
}