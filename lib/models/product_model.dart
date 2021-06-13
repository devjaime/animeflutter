class ProductModel {
  int id;
  String type;
  String description;
  double price;
  String path;
  String pathnetwork;

  ProductModel(
      {required this.id,
      required this.type,
      required this.description,
      required this.price,
      required this.path,
      required this.pathnetwork});
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    type: "Toriyama",
    description: "Dragon BALL",
    price: 12.0,
    path: "assets/nike_1.png",
    pathnetwork:
        "https://i.pinimg.com/564x/1b/49/c4/1b49c4db6a5f0cd6cc65c439be243c6f.jpg",
  ),
  ProductModel(
    id: 2,
    type: "ONE",
    description: "One Punch",
    price: 20.0,
    path: "assets/nike_2.png",
    pathnetwork:
        "https://i.pinimg.com/564x/d2/71/bb/d271bbd178663c9d10b1f189b7112911.jpg",
  ),
  ProductModel(
      id: 3,
      type: "Weekly",
      description: "One Piece",
      price: 15.0,
      path: "assets/nike_3.png",
      pathnetwork:
          "https://i.pinimg.com/564x/70/bf/77/70bf77a79f459ee03b4636652718c52a.jpg"),
  ProductModel(
      id: 4,
      type: "Tsugumi Ōba",
      description: "Bleach",
      price: 120.0,
      path: "assets/nike_4.png",
      pathnetwork:
          "https://i.pinimg.com/564x/fe/76/d9/fe76d9bbfbe10bd425576aadbdefb1c4.jpg"),
  ProductModel(
    id: 5,
    type: "Tite Kubo",
    description: "Tite",
    price: 120.0,
    path: "assets/nike_5.png",
    pathnetwork:
        "https://i.pinimg.com/564x/e7/1b/0a/e71b0a8c99956a0546ad00b78da2cd09.jpg",
  ),
  ProductModel(
      id: 6,
      type: "Tite",
      description: "Tite",
      price: 120.0,
      path: "assets/nike_6.png",
      pathnetwork:
          "https://i.pinimg.com/564x/6b/c1/6b/6bc16bb26f25a1f5729af1acb66bd092.jpg"),
  ProductModel(
      id: 7,
      type: "Tite",
      description: "Tite",
      price: 120.0,
      path: "assets/nike_7.png",
      pathnetwork:
          "https://i.pinimg.com/564x/51/22/06/51220610e4aeef29ef5a8e2c912653e8.jpg"),
  ProductModel(
    id: 8,
    type: "Tite",
    description: "Tite",
    price: 120.0,
    path: "assets/nike_8.png",
    pathnetwork:
        "https://i.pinimg.com/564x/64/c8/d2/64c8d247f036dd40646afc6547bf2cb1.jpg",
  ),
  ProductModel(
    id: 9,
    type: "Tite",
    description: "Tite",
    price: 120.0,
    path: "assets/nike_9.png",
    pathnetwork:
        "https://i.pinimg.com/564x/0b/18/64/0b1864b49f18a762f5fb9e4403cd2337.jpg",
  ),
  ProductModel(
    id: 10,
    type: "Tite",
    description: "Tite",
    price: 120.0,
    path: "assets/nike_10.png",
    pathnetwork:
        "https://i.pinimg.com/originals/01/cc/c4/01ccc45425016b91a64c1d55e4c3a065.jpg",
  ),
];
