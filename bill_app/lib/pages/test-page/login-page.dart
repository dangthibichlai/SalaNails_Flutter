// ignore: file_names
import 'package:bill_app/pages/test-page/home-page.dart';
import 'package:flutter/material.dart';

import '../../components/custom-text-filed.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            // Ảnh nền của màn hình login page bị đen không hiện ảnh nền

            image: AssetImage(
              'assets/images/login.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: 20,
                  right: 20),
              child: const Text(
                "WELCOME \n "
                "        TO APP!",
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 242, 3),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45,
                  left: 20,
                  right: 20),
              child: Column(
                children: [
                  CustomTextFiled(
                    hintText: "UserName",
                    controller: userNameController,
                    icon: Icons.person,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFiled(
                    hintText: "Password",
                    controller: passwordController,
                    isPassword: true,
                    icon: Icons.key,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    // cawn hai đầu
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Sign in",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      // vẽ hình tròn
                      GestureDetector(
                          onTap: () {
                            var use = userNameController.text.trim();
                            var pass = passwordController.text.trim();
                            if (use == 'admin' && pass == '123') {
                              Navigator.push(
                                context,
                                // ignore: prefer_const_constructors
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ),
                              );
                            } else {
                              if (use == '' || pass == '') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Vui lòng nhập tài khoản và mật khẩu"),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text("Sai tài khoản hoặc mật khẩu"),
                                  ),
                                );
                              }
                            }
                          },
                          child: const CircleAvatar(
                            backgroundColor: Color.fromARGB(232, 95, 79, 79),
                            radius: 20,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color.fromARGB(255, 244, 242, 242),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    // cawn hai đầu
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 105, 184, 249)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot Passwords",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 105, 184, 249)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
