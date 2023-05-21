import 'package:bill_app/pages/login-page-salanail.dart';
import 'package:flutter/material.dart';

import '../pages/resources/app-color.dart';

class MasterPage extends StatelessWidget {
  final String? title;
  // tham số truyền vào là nội dung của body  là file CustomBottomAppBar
  final Widget? body;
  const MasterPage({
    super.key,
    this.body,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 238, 240),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_backspace_rounded,
                size: 30.0, color: AppColor.white)),
        title: Text(title ?? 'Sala Nail',
            style: const TextStyle(fontSize: 25, fontFamily: 'RobotoMono')),
        backgroundColor: const Color.fromARGB(181, 254, 124, 163),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), //
        child: SizedBox(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(left: 28.0),
                icon: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 243, 180, 201),
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(right: 28.0),
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 243, 180, 201),
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(left: 28.0),
                icon: const Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 243, 180, 201),
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 30.0,
                padding: const EdgeInsets.only(right: 28.0),
                icon: const Icon(
                  Icons.logout_outlined,
                  color: Color.fromARGB(255, 243, 180, 201),
                ),
                onPressed: () {
                  Route route = MaterialPageRoute(
                    builder: (context) => const LoginPageNail(),
                  );
                  Navigator.pushAndRemoveUntil(
                    context,
                    route,
                    (Route<dynamic> route) => false,
                  );
                },
              )
            ],
          ),
        ),
      ),
      body: body,
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Image.asset('assets/images/login_logo.png'),
          ),
        ),
      ),
    );
  }
}
