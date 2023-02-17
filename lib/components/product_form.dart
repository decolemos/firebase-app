import 'package:flutter/material.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 100,
        child: Form(
          child: Column(
            children: [
              TextFormField(),
              TextFormField(),
              ElevatedButton(
                onPressed: () {

                }, 
                child: const Text('Adicionar')
              )
            ],
          )
        ),
      ),
    );
  }
}