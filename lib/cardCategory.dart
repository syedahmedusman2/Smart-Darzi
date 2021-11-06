
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/login.dart';
import 'package:flutter_ecommerce_app/widgets/card_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CardCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
              child: CategoryCard(

              'assets/shirt.png',

                // Icon(FontAwesomeIcons.tshirt, size: 40,color: Colors.blue,),
                'Tshirt'
                ),
            ),
              CategoryCard(
             'assets/pants.png',
              'Pant'
              ),
              CategoryCard(
              'assets/wedding-suit.png',

              // Icon(Icons.car_rental, size: 40,color: Colors.blue,),
              'Suit'
              ),
              CategoryCard(
              'assets/cloth.png',

              // Icon(Icons.mobile_friendly, size: 40,color: Colors.blue,),
              'Shirt'
              ),
              CategoryCard(
              'assets/woman-clothes.png',

              // Icon(Icons.shop, size: 40,color: Colors.blue,),
              'Female'
              ),
              CategoryCard(
              'assets/dress.png',

              // Icon(Icons.weekend, size: 40,color: Colors.blue,),
              'Kids'
              ),
          ],
        ),
      ),
    );
  }
}