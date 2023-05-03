import 'package:flutter/material.dart';

import '../../components/custom_container_infomation.dart';
import '../../components/custom_elevate-button.dart';
import '../../components/custom_row_input.dart';
import '../resources/app-color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController soLuongKHController = TextEditingController();
  TextEditingController donViController = TextEditingController();
  TextEditingController thanhTienViController = TextEditingController();

  bool isValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Trang thanh toán'),
        backgroundColor: const Color.fromARGB(255, 245, 172, 196),
      ),
      body: Stack(children: [
        Container(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: 20,
            right: 20,
          ),
          height: MediaQuery.of(context).size.height * 0.85,
          // nên  màu nền của container
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomRowText(
                  text: 'Tên khách hàng',
                  controller: nameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomRowText(
                  text: 'Số lượng khách hàng',
                  controller: soLuongKHController,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomRowText(
                  text: 'Prece',
                  controller: donViController,
                ),
                SizedBox(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: ListTile(
                    leading: Material(
                        child: Checkbox(
                            value: isValue,
                            onChanged: (bool? newValue) {
                              setState(() {
                                isValue = newValue!;
                              });
                            })),
                    title: const Text("KH Vip"),
                  ),
                )),
                CustomRowText(
                    text: "Thành tiền", controller: thanhTienViController),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      text: "Thanh Toán",
                      onPressed: () {},
                    ),
                    CustomButton(
                      text: "Tiếp",
                      onPressed: () {},
                    ),
                    CustomButton(
                      text: "Thống kê",
                      onPressed: () {},
                    ),
                  ],
                ),
                // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        CustomContainer(),
                        CustomContainer(),
                        CustomContainer(),
                        CustomContainer(),
                      ],
                    ),
                  ),
                ),
                //const SizedBox(height: 20),
                Container(
                  height: 120,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 249, 181, 204),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: []),
                  //mainAxisSize: MainAxisSize.max,
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Text(
                            "Tống số KH : ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("4 "),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Text(
                            "Tống số KH Vip : ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("3 "),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: const [
                          Text(
                            "Tống doanh thu : ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text("900.000 "),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
      //  ],
      // ),
    );
  }
}
