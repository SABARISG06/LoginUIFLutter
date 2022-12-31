import 'package:flutter/material.dart';

import '../../custombuttonwid/elevatedbu.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
          const SizedBox(height: 20.0),
          //Creating the our own custom widget button.
          CustomElevatedButton(
            bgcolor: Colors.white,
            borderRadius: 15.0,
            padding: 15.0,
            onPressed: () {},
            fgcolor: Colors.black,
            child: const Text(
              'Sign-in with Google',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          //Creating the our own custom widget button.
          CustomElevatedButton(
            bgcolor: const Color(0xFF334D92),
            borderRadius: 15.0,
            padding: 15.0,
            onPressed: () {},
            fgcolor: Colors.white,
            child: const Text(
              'Sign-in with FaceBook',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          CustomElevatedButton(
            bgcolor: Colors.teal,
            borderRadius: 15.0,
            padding: 15.0,
            onPressed: () {},
            fgcolor: Colors.white,
            child: const Text(
              'Sign-in with Email',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'OR',
            style: TextStyle(color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          CustomElevatedButton(
            bgcolor: Colors.yellow.shade500,
            borderRadius: 15.0,
            padding: 15.0,
            onPressed: () {},
            fgcolor: Colors.red,
            child: const Text(
              'Sign-in with anonyms',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
