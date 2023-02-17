import 'package:firebase_app/model/product.dart';

class ProductList{

  List<Product> items = [
    Product(id: '001', name: 'Mouse', price: 19.99)
  ];

  Future<void> addItem(Product newItem) async {
    items.add(newItem);
  }

  Future<void> removeItem(String id) async {
    items.removeWhere((product) => product.id == id);
  }

  Future<void> editItem(Product newItem) async {
    int index = items.indexWhere((product) => product.id == newItem.id);

    items[index] = newItem;
  }
}