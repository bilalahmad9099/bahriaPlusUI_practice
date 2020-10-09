import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {

  final Widget image_1;
  final String firstText;


  const CategoryCard({Key key,@required this.image_1,@required this.firstText}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
     // height: 150,
      //width: 80,
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.symmetric(horizontal:7,vertical: 8),
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(6) ),
        child:Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10,right:10),
              child: image_1,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                firstText,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}