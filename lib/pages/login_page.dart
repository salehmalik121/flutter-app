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
  final _formKey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, Myroutes.homeRoute);
      // ignore: await_only_futures
      setState(() {
        changebutton = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 350,
                  //width: 600,
                  child: Center(
                    child: Image.asset(
                      "assets/images/login_image.png",
                      fit: BoxFit.cover,
                      //height: 200,
                      //width: 600,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  child: Container(
                    width: 400,
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Username cannot be empty";
                            }

                            return null;
                          },
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
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cant be Empty";
                            } else if (value.length < 6) {
                              return "Password should be greater the 6 ";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter password",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(changebutton ? 80 : 10),
                  color: changebutton
                      ? Colors.green
                      : Theme.of(context).buttonColor,
                  child: InkWell(
                    onTap: () => movetoHome(context),
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
                      width: changebutton ? 40 : 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
