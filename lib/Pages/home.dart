import 'package:firebase_app/components/product_form.dart';
import 'package:firebase_app/components/product_item.dart';
import 'package:firebase_app/model/product_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ProductList products = ProductList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Produtos"),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context, 
                builder: (context) {
                  return ProductForm();
                }
              );
            }, 
            icon: const Icon(
              Icons.add
            )
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.items.length,
        itemBuilder: (context, index) {
          return ProductItem(product: products.items[index]);
        },
      ),
    );
  }
}

