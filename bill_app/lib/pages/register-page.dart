import 'package:bill_app/pages/test-page/login-page.dart';
import 'package:flutter/material.dart';

import '../components/text-filed-register.dart';
import 'login-page-salanail.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isCheckPhoneNumber = false;
  bool isCheckName = false;
  bool isCheckPassword = false;
  bool isCheckEmail = false;

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login_nen.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, bottom: 10),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  color: Colors.white,
                                  width: 350,
                                  // height: 500,
                                  padding: const EdgeInsets.only(
                                      top: 70, left: 20, right: 20, bottom: 10),
                                  child: Column(
                                    children: [
                                      TextFiledRegister(
                                        controller: phoneNumberController,
                                        text: "Số điện thoại *",
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: isCheckPhoneNumber,
                                            child: const Text(
                                              "SDT không được để trống",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFiledRegister(
                                        controller: userNameController,
                                        text: "Họ & Tên *",
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: isCheckName,
                                            child: const Text(
                                              "Họ và Tên không được để trống",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFiledRegister(
                                        controller: passwordController,
                                        text: "Mật khẩu *",
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: isCheckPassword,
                                            child: const Text(
                                              "Mật khẩu không được để trống",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      TextFiledRegister(
                                        controller: emailController,
                                        text: "Email *",
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Visibility(
                                            visible: isCheckEmail,
                                            child: const Text(
                                              "Email không được để trống",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: TextButton(
                                                onPressed: () {
                                                  if (phoneNumberController
                                                          .text.isEmpty ||
                                                      userNameController
                                                          .text.isEmpty ||
                                                      passwordController
                                                          .text.isEmpty ||
                                                      emailController
                                                          .text.isEmpty) {
                                                    setState(() {
                                                      isCheckPhoneNumber =
                                                          phoneNumberController
                                                              .text.isEmpty;
                                                      isCheckName =
                                                          userNameController
                                                              .text.isEmpty;
                                                      isCheckPassword =
                                                          passwordController
                                                              .text.isEmpty;
                                                      isCheckEmail =
                                                          emailController
                                                              .text.isEmpty;
                                                    });
                                                  } else {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                LoginPageNail()));
                                                  }
                                                },

                                                // ignore: sort_child_properties_last
                                                child: const Text(
                                                  "ĐĂNG KÝ",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 252, 188, 215),
                                                )),
                                          ),
                                          // TextButton(
                                          //     onPressed: () {},
                                          //     // ignore: sort_child_properties_last
                                          //     child: const Text(
                                          //       "ĐĂNG KÝ",
                                          //       style: TextStyle(color: Colors.white),
                                          //     ),
                                          //     style: TextButton.styleFrom(
                                          //       backgroundColor: const Color.fromARGB(
                                          //           255, 252, 188, 215),
                                          //     )),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: -60,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      left: 105,
                                      // top: 10,
                                    ),
                                    child: Image.asset(
                                      'assets/images/login_logo.png',
                                      fit: BoxFit.contain,
                                      width: 120,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )

            //  )
          ],
        ),
      ),
    );
  }
}
