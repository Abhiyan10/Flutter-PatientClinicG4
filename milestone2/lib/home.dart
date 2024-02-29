import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:milestone2/constant.dart';
import 'package:milestone2/login.dart';
import 'package:milestone2/register.dart';

import 'color.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
              Container(
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This is HomePage ',
                    style: TextStyle(
                      color: Color(0xFF4d4bb2),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
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
