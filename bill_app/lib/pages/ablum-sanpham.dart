import 'dart:convert';

import 'package:bill_app/provider/Products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/master-page.dart';
import 'detail-product.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class AblumSanPhamPagePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  AblumSanPhamPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return MasterPage(
      title: 'Ablum sản phẩm',
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (BuildContext context, int index) => SanPham(
          products[index].id,
          products[index].image,
          products[index].name,
        ),
      ),
    );
  }
}

class SanPham extends StatelessWidget {
  String? id;
  String? image;
  String? name;
  SanPham(String? id, String? image, String? name, {super.key}) {
    this.id = id;
    this.image = image;
    this.name = name;
  }
  void addCart(String name, String image) {
    final url = Uri.https(
        'salabeauty-da77b-default-rtdb.firebaseio.com', 'Product.json');
    final respone = http.post(url,
        body: json.encode({
          'image': image,
          'name': name,
        }));
    print(respone);
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        // ignore: sort_child_properties_last
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(DetailProductPage.routerName, arguments: id);
            print(id);
          },
          child: Image.network(
            image ?? '',
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: const Color.fromARGB(255, 251, 210, 230),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          title: Text(
            name ?? '',
          ),
          trailing: IconButton(
            onPressed: () {
              addCart(name ?? '', image ?? '');
            },
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ));
  }
}
