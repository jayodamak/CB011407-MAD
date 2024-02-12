import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/my_textfield.dart';
import 'Home_page.dart';
import 'first_page.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
   void signUserIn() {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.yellow[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                // Logo
                Image.asset(
                  'lib/images/logo.png',
                  width: 200,
                  height: 200,
                ),
        
                const SizedBox(height: 10),
        
                Text(
                    'Welcome back to COZY!',
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 16,
                  ),
                ),
        
                const SizedBox(height: 40),
        
        
                // Username textfield
               MyTextField(
                 controller: usernameController,
                   hintText: 'Username',
                 obscureText: false,
               ),
        
                const SizedBox(height: 25),
        
                //  password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
        
                ),
        
                const SizedBox(height: 10),
        
                // Forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 50),
        
                // Sign in button
                MyButton(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstPage(),
                      ),
                    );
                  },
                  buttonText: "Sign In",
                ),
        
        
                const SizedBox(height: 50),
        
        
        
                // Not a member? Register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
        
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );
                      },
                      child: const Text(
                        ' Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
        
        
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
