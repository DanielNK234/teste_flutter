import 'package:flutter/material.dart';

class ProductUpdate extends StatelessWidget {
  const ProductUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text("Editar Produto",
            style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {

                },
                child: const Icon(
                  Icons.add_circle,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'nome do produto'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Preço'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Material'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Url da imagem'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
