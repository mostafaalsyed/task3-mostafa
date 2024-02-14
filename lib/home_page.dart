import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/sign_in.dart';
import 'package:flutter_application_2/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController PassWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(),
        ),
        FlutterLogo(
          size: 100,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: phoneNumberController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Phone Number",
            ),
            validator: (value) {
              if (value!.length > 8 && value.length < 10) {
                return null;
              } else {
                return "invalid Phone Number";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            controller: PassWordController,
            decoration: InputDecoration(labelText: "Password"),
            validator: (value) {
              if (value!.length > 8) {
                return "invalid Phone Number";
              }
              return null;
            },
          ),
        ),
    
        AppButton(
          label: "Log in",
          color: Colors.blue,
          onTop: () {
            if (_formKey.currentState!.validate()) {
              if (kDebugMode) {
                print("Logged In");
              }
            }
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => SignInPage(
                          phoneNumber: phoneNumberController.text,
                        )));
            phoneNumberController.clear();
            PassWordController.clear();
          },
        ),

        Padding(
          padding: const EdgeInsets.all(10),
        ),
        Text("Forget Password Yawa ? tap me "),
        AppButton(
          label: "Don't have Email Sign up",
          color: Colors.grey,
          onTop: () {
            if (_formKey.currentState!.validate()) {
              if (kDebugMode) {
                print("Logged In");
              }
            }
          },
        ),
      ])),
    ));
  }
}
