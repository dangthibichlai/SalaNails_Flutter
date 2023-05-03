import 'package:bill_app/pages/ablum-sanpham.dart';
import 'package:flutter/material.dart';

import '../models/function-home.dart';
import '../pages/resources/app-color.dart';
import 'coming-soon.dart';

// ignore: camel_case_types
class serviceHome extends StatelessWidget {
  const serviceHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<FunctionHome> listFunc = [
      FunctionHome(
          id: 9,
          name: 'Menu dịch vụ',
          image: 'assets/images/function-home-images/menudichvu.jpg'),
      FunctionHome(
          id: 10,
          name: 'Ablum sản phẩm',
          image: 'assets/images/function-home-images/ablum-sanpham.jpg'),
      FunctionHome(
          id: 11,
          name: 'Đặt lịch',
          image: 'assets/images/function-home-images/datlich.jpg'),
      FunctionHome(
          id: 12,
          name: 'Mã giảm giá',
          image: 'assets/images/function-home-images/ma-giam-gia.jpg'),
      FunctionHome(
          id: 13,
          name: 'Giới thiệu bạn bè',
          image: 'assets/images/function-home-images/gioi-thieu-ban-be.jpg'),
      FunctionHome(
          id: 14,
          name: 'Nails box',
          image: 'assets/images/function-home-images/nails-box.jpg'),
    ];

    return Expanded(
      child: Stack(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20.0, right: 10, left: 10, bottom: 10),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/function-home-images/block-chinh.png'),
                fit: BoxFit.cover,
              ),
              color: Color.fromARGB(255, 249, 213, 225),
            ),
            //

            child: Align(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.6), // là
                    crossAxisSpacing: 10,
                    // mainAxisSpacing: 20, // khoảng cách giữa các item
                    crossAxisCount: 3,
                  ),
                  itemCount: listFunc.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return
                        // Item
                        GestureDetector(
                      onTap: () {
                        switch (listFunc[index].id) {
                          case 10:
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                           AblumSanPhamPagePage()));
                              break;
                            }
                          default:
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ComingSoonPage()));
                            }
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(66, 126, 123, 123),
                                    blurRadius: 5,
                                    spreadRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                listFunc[index].image ?? '',
                                fit: BoxFit.cover,
                                height: 80,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                listFunc[index].name ?? '',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),

        //
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            height: 50,
            //color: const Color.fromARGB(255, 253, 247, 249), //
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 252, 116, 116), // màu nền
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Text(
              "DỊCH VỤ TẠI SALA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
