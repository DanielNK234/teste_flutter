import 'package:flutter/material.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({super.key});
  
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text("Adicionar Produto",
            style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
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
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'nome do produto',
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'coloque o nome do produto';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Preço'),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'coloque o preço';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Material'),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'coloque o material';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Url da imagem'),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'coloque a Url da imagem';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
