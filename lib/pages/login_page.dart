import 'package:awesome_app/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/loginBG.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            validator: (s) {},
                            controller: _userNameController,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                              label: Text("UserName"),
                              hintText: "Input username",
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            validator: (s) {},
                            controller: _passController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              label: Text("Password"),
                              hintText: "Enter password",
                            ),
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //formKey.currentState.validate();
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => HomePage()));
                              Navigator.pushNamed(context, HomePage.routeName);
                            },
                            child: Text("Sign In"),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0.0),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.grey),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange),
                              //textStyle: MaterialStateProperty.,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
