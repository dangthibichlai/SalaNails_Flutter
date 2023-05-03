import 'package:bill_app/models/function-home.dart';
import 'package:bill_app/pages/resources/app-color.dart';
import 'package:flutter/material.dart';

import '../components/Carousel-home.dart';
import '../components/item-home.dart';
import '../components/master-page.dart';
import '../components/service-home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MasterPage(
      title: 'Home Page',
      body: Column(
        children: const [
          CarouseHome(),
          itemHome(),
          serviceHome(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types


