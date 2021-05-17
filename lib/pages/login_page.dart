import 'package:floppify/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String name = "";

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/floppify_login2.jpg",
              fit: BoxFit.cover,
              height: 450,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome " + name,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                labelText: "Enter Email",
              ),
              onChanged: (value) {
                name = value;
                setState(() {
                  name = value;
                });
                print(name);
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: "Enter Password",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, FloppifyRoutes.homeRoute);
              },
              child: Container(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(),
            // )
          ],
        ),
      ),
    );
  }
}
