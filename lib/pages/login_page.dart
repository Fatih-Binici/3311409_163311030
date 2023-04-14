import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login/components/my_button.dart';
import 'package:login/components/my_textfield.dart';
import 'package:login/pages/home_page.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

   final emailController = TextEditingController();
   final passwordController = TextEditingController();

    void signUserIn() {}
   @override

   Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
           const SizedBox(height: 50),
           const Icon(Icons.lock,
            size:100),

           const SizedBox(height: 50),

              Text('Welcome back, you\'ve been missed!',
              style: TextStyle(color: Colors.grey[700],
              fontSize: 18,)),

              const SizedBox(height: 25),

              MyTextField(
                controller: emailController,
                hintText: 'E-mail',
                obscureText: false,

              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot your password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

          MyButton(
            onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
        }
          ),
              const SizedBox(height: 50),

              Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )
                  ),
                  Text('not a member? Register now.'),
              Expanded(child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              )
              ),
                  ],
              )] ),
        ),
      ),
    );
  }
}
