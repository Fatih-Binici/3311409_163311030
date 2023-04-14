import 'package:flutter/material.dart';
import 'package:login/pages/home_page.dart';

class MyButton extends StatelessWidget {
 final onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(color: Colors.black,
      borderRadius: BorderRadius.circular(8)),
      child: const Center(child: Text("Sign In",
      style: TextStyle(color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold),),


      )
      ),
     onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>HomePage()));

},
    );

  }
}
