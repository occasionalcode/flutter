import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 25),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              'Welcome \nBack',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            ),
          ),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      // borderSide: BorderSide.none
                      borderRadius: BorderRadius.circular(40)),
                  fillColor: Colors.indigo[400],
                  filled: true,
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.white))),
          Padding(padding: EdgeInsets.all(8)),
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  hintText: 'password',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.indigo[400],
                  filled: true)),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            width: double.infinity,
            child: GestureDetector(
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => print('forgot pasword was clicked'),
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                print('logging in...');
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.orange)),
            ),
          ),
        ],
      ),
    ));
  }
}
