// import 'package:flutter/material.dart';
// import 'package:ship_shop/screen/login.dart';
// import 'package:ship_shop/screen/signup.dart';

import 'package:flutter/material.dart';
import 'package:getx/pages/login/pages/login_page.dart';
import 'package:getx/pages/register/register_page.dart';

class Ongoingscreen extends StatefulWidget {
  const Ongoingscreen({Key? key}) : super(key: key);

  @override
  State<Ongoingscreen> createState() => _OngoingscreenState();
}

class _OngoingscreenState extends State<Ongoingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    Text(
                      "Ship_Shop",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Shop With Us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(221, 255, 94, 0),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/images/onboard12.jpg')),
                  ),
                ),
                Column(
                  children: [
                    // MaterialButton(...),
                    const SizedBox(height: 20),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const RegisterPage())));
                      },
                      color: const Color.fromARGB(221, 255, 94, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),

                    Column(
                      children: [
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const LoginPage())));
                          },
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ])),
    ));
  }
}
