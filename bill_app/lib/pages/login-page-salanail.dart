import 'package:flutter/material.dart';

import 'home-page.dart';
import 'register-page.dart';

class LoginPageNail extends StatefulWidget {
  const LoginPageNail({super.key});

  @override
  State<LoginPageNail> createState() => _LoginPageNailState();
}

class _LoginPageNailState extends State<LoginPageNail> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isPassword = true;
  bool isCheckPassword = false;
  bool isCheckUserName = false;
  @override
  Widget build(BuildContext context) {
    return
        // SingleChildScrollView(
        //     child:
        Container(
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
                //child: Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 20),
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
                              width: 330,
                              padding: const EdgeInsets.only(
                                  top: 50, left: 20, right: 20, bottom: 10),
                              child: IntrinsicHeight(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: userNameController,
                                      decoration: const InputDecoration(
                                        labelText: 'Username',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Visibility(
                                          visible: isCheckUserName,
                                          child: const Text(
                                            "Tên đăng nhập không được để trống",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextField(
                                      obscureText: _isPassword,
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isPassword
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: const Color.fromARGB(
                                                255, 93, 166, 173),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isPassword = !_isPassword;
                                            });
                                          },
                                        ),
                                        labelText: 'Password',
                                      ),
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
                                            style: TextStyle(color: Colors.red),
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
                                        TextButton(
                                            onPressed: () {
                                              String userName =
                                                  userNameController.text;
                                              String password =
                                                  passwordController.text;
                                              if (userName == 'admin' &&
                                                  password == '123') {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const HomePage()),
                                                );
                                                // ScaffoldMessenger.of(context)
                                                //     .showSnackBar(const SnackBar(
                                                //   content: Text(
                                                //       "Đăng nhập thành công"),
                                                // ));
                                              } else {
                                                setState(() {
                                                  isCheckPassword =
                                                      userName.isEmpty;
                                                  isCheckUserName =
                                                      password.isEmpty;
                                                  if (isCheckPassword ==
                                                          false &&
                                                      isCheckUserName ==
                                                          false) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                      content: Text(
                                                          "Đăng nhập thất bại"),
                                                    ));
                                                  }
                                                });
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                        const SnackBar(
                                                  content: Text(
                                                      "Đăng nhập thất bại"),
                                                ));
                                              }
                                            },
                                            // ignore: sort_child_properties_last
                                            child: const Text(
                                              "ĐĂNG NHẬP",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 252, 188, 215),
                                            )),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const RegisterPage()),
                                              );
                                            },
                                            child: const Text("Đăng ký")),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const RegisterPage()));
                                            },
                                            child:
                                                const Text("Quên mật khẩu?")),
                                      ],
                                    )
                                  ],
                                ),
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

            // ),
          ],
        ),
      ),
    );
  }
}
