class Product {
  int id;
  String nome;
  double preco;
  String material;
  String url;

  Product({
    required this.id,
    required this.nome,
    required this.preco,
    required this.material,
    required this.url,
  });

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nome": nome,
      "preco": preco,
      "material": material,
      "url": url
    };
  }

  factory Product.fromJson(Map json) => Product(
        id: json['id'] ?? '',
        nome: json['nome'] ?? '',
        preco: json['preco'] ?? '',
        material: json['material'] ?? '',
        url: json['url'] ?? '',
      );
}

class NewProduct extends Product {
  NewProduct(
      {required super.id,
      required super.nome,
      required super.preco,
      required super.material,
      required super.url
      // super.fkNf,
      });
  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nome": nome,
      "preco": preco,
      "material": material,
      "url": url
    };
  }
}
