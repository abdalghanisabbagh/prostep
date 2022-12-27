
import 'package:flutter/material.dart';

class WorkExperience extends StatelessWidget {
   const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset('assets/images/splash_logo.jpg',height: 75,width: 75,fit: BoxFit.cover,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left:8.0),
              child: Text(
                'Junior flutter developer',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: Padding(
          padding: EdgeInsets.only(left:8.0),
          child: Text(            
              'Plus99  Part-Time Jul 2022  Present Aleppo , Syria',
              maxLines: 5,
              style: TextStyle(
                  color: Color.fromARGB(255, 107, 98, 98),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
          ),
        ),
            ),

          ],
        ),
       
      ],
    );
  }
}