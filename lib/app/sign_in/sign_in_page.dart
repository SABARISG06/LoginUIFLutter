import 'package:flutter/material.dart';
import 'package:mobileappprojects/custombuttonwid/socialsignin.dart';

import '../../custombuttonwid/sign_in_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  void _signinAnonymously() async {
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    // ignore: avoid_print
    print(authResult.user!.uid);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'LOGIN PAGE UI',
          ),
          backgroundColor: Colors.indigo[400],
          elevation: 10.0,
        ),
        body: _colorscontainer(),
        backgroundColor: Colors.grey[300],
      ),
    );
  }

  Widget _colorscontainer() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign-In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50.0),
          //Creating the our own custom widget button.
          SocialSignInButton(
            imageName: 'images/google-logo.png',
            text: 'Sign-in with Google',
            bgcolor: Colors.white,
            borderRadius: 5.0,
            onPressed: () {},
            fgcolor: Colors.black,
            fontsize: 18.0,
            height: 50.0,
          ),
          const SizedBox(height: 8.0),
          //Creating the our own custom widget button.
          SocialSignInButton(
            imageName: 'images/facebook-logo.png',
            text: 'Sign-in with FaceBook',
            fontsize: 18.0,
            height: 50.0,
            bgcolor: const Color(0xFF334D92),
            borderRadius: 5.0,
            onPressed: () {},
            fgcolor: Colors.white,
          ),
          const SizedBox(height: 8.0),
          SignInButton(
            // imageName: 'images/logo-gmail-9952.png',
            text: 'Sign-in with Email',
            fontsize: 18.0,
            height: 50.0,
            bgcolor: Colors.teal,
            borderRadius: 5.0,
            onPressed: () {},
            fgcolor: Colors.white,
          ),
          const SizedBox(height: 8.0),
          const Text(
            'OR',
            style: TextStyle(color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          SocialSignInButton(
            imageName: 'images/crowd-27575.png',
            text: 'Go anonymous',
            fontsize: 18.0,
            height: 50.0,
            bgcolor: Colors.yellow[900],
            borderRadius: 5.0,
            // padding: 15.0,
            onPressed: _signinAnonymously,
            fgcolor: Colors.white,
          ),
        ],
      ),
    );
  }
}
