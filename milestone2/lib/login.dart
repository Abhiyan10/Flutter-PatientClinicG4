import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:milestone2/constant.dart';
import 'package:milestone2/home.dart';
import 'package:milestone2/register.dart';

import 'color.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              // Container(
              //   decoration: const BoxDecoration(
              //       shape: BoxShape.circle, color: Color(0xffF5F4F8)),
              //   child: IconButton(
              //       onPressed: () {},
              //       icon: const Icon(
              //         Icons.arrow_back_ios,
              //         color: Colors.black,
              //         size: 15,
              //       )),
              // ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              RichText(
                  text: const TextSpan(
                      text: 'Let\'s',
                      style: TextStyle(
                        color: Color(0xFF252B5C),
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: ' Sign in',
                      style: TextStyle(
                          color: Color(0xFFFB802C),
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    )
                  ])),
              const SizedBox(height: 5),
              const Text('Enter your credential to continue',
                  style: TextStyle(
                    color: Color(0xFF58667E),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(height: 15),
              TextFormField(
                  textAlign: TextAlign.start,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Email Address/ Phone Number',
                    prefixIcon: Image.asset('assets/images/icons/user.png'),
                  )),
              const SizedBox(height: 15),
              TextFormField(
                  textAlign: TextAlign.start,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password',
                    prefixIcon: Image.asset('assets/images/icons/lock.png'),
                    suffixIcon: Image.asset('assets/images/icons/show.png'),
                  )),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
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
                    child: Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Remember Me',
                          style: TextStyle(
                            color: Color(0xFF1F4C6B),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 2,
                    decoration: const BoxDecoration(
                        color: Color(0xFFECEDF3),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        )),
                  ),
                  const SizedBox(width: 10),
                  const Text('OR',
                      style: TextStyle(
                        color: Color(0xFFA1A5C1),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 2,
                    decoration: const BoxDecoration(
                        color: Color(0xFFECEDF3),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, right: 65, left: 65),
                      decoration: const BoxDecoration(
                          // shape: BoxShape.rectangle,
                          color: Color(0xFFEFF2F5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Image.asset('assets/images/icons/google.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, right: 65, left: 65),
                      decoration: const BoxDecoration(
                          // shape: BoxShape.rectangle,
                          color: Color(0xFFEFF2F5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Image.asset(
                        'assets/images/icons/facebook.png',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                      color: Color(0xFF4d4bb2),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Color(0xFF2d2ba4),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
