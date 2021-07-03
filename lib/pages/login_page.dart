import 'package:flutter/material.dart';
import 'package:learning/pages/utis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                //Navigator.pushNamed(context, Myroutes.homeRoute);
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, Myroutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(
                  seconds: 1,
                ),
                alignment: Alignment.center,
                child: changebutton
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                height: 40,
                width: changebutton ? 40 : 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(changebutton ? 80 : 10),
                ),
              ),
            ),
            // ElevatedButton(onPressed: () {}, child: Text("login"))
          ],
        ));
  }
}
