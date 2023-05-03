import 'package:bill_app/provider/Products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/master-page.dart';

// ignore: must_be_immutable
class AblumSanPhamPagePage extends StatelessWidget {
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
            products[index].image, products[index].name, products[index].id),
      ),
    );
  }
}

class SanPham extends StatelessWidget {
  String? id;
  String? image;
  String? name;
  SanPham(String? image, String? name, int? id, {super.key}) {
    this.id = id.toString();
    this.image = image;
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        // ignore: sort_child_properties_last
        child: Image.network(
          image ?? '',
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Color.fromARGB(255, 251, 210, 230),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          title: Text(
            name ?? '',
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ));
  }
}
