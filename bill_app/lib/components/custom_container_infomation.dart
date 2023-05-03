import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 130,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: const Color.fromARGB(255, 251, 1, 1), width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text(
              "Đặng Thị Bích Lài: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("Quantity: 12"),
              Text("Price: 12.000"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 35,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 188, 206),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: const Text("Total Price: 300.000"),
              )
              // SizedBox(
              //   height: 20,
              // )
            ],
          )
        ],
      ),
    );
  }
}
