import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:milestone2/color.dart';
import 'package:milestone2/constant.dart';
import 'package:milestone2/login.dart';

import 'package:http/http.dart' as http;

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Demo',
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async {
    final String firstName = _firstnameController.text;
    final String lastName = _lastNameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;

    final response = await http.post(
      Uri.parse('http://10.0.2.2:4000/user'),
      body: jsonEncode(<String, String>{
        'firstname': firstName,
        'username': lastName,
        'email': email,
        'password': password,
        'userType': "admin"
      }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration Successful')),
      );
      // Registration successful, handle navigation or display success message
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration failed')),
      );
      // Registration failed, handle error (e.g., display error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().bodyColor,
      body: Container(
        color: AppColor().bodyColor,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.ce,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffF5F4F8)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 15,
                      )),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              RichText(
                  text: const TextSpan(
                      text: 'Create your ',
                      style: TextStyle(
                        color: Color(0xFF252b5c),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: 'account',
                      style: TextStyle(
                          color: Color(0xFF252b5c),
                          fontSize: 24,
                          fontWeight: FontWeight.w800),
                    )
                  ])),
              const SizedBox(height: 5),
              const Text(
                'Welcome back ',
                style: TextStyle(
                    color: Color(0xFF58667E),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              const Text(
                'Patient Data Mobile App',
                style: TextStyle(
                    color: Color(0xFF58667E),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                        controller: _firstnameController,
                        textAlign: TextAlign.start,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'First Name',
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextFormField(
                        controller: _lastNameController,
                        textAlign: TextAlign.start,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Last Name',
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              TextFormField(
                  controller: _emailController,
                  textAlign: TextAlign.start,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Email Address/ Phone Number',
                    prefixIcon: Image.asset('assets/images/icons/user.png'),
                  )),
              const SizedBox(height: 15),
              TextFormField(
                  controller: _passwordController,
                  textAlign: TextAlign.start,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password',
                    prefixIcon: Image.asset('assets/images/icons/lock.png'),
                    suffixIcon: Image.asset('assets/images/icons/show.png'),
                  )),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  _register();
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF242358),
                          Color(0xFF34328E),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
