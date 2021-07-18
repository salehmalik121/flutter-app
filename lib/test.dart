import 'package:flutter/material.dart';
import 'package:learning/pages/utis/routes.dart';

// ignore: camel_case_types
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

// ignore: camel_case_types
class _testState extends State<test> {
  String name = " ";
  bool changebutton = false;
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/login_image.png",
                    width: 600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
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
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Feild cant be empty";
                            }
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter Password",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });

                    Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, Myroutes.homeRoute);
                    setState(() {
                      changebutton = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    child: Center(
                        child: changebutton
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadiusDirectional.circular(
                            changebutton ? 80 : 10)),
                    height: 40,
                    width: changebutton ? 40 : 100,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
