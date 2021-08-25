class Product {
  String image;
  String description;
  String price, oldPrice, discount;

  Product({
    required this.image,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });
}

List<Product> products = [
  Product(
    image: 'assets/images/digital_05.jpg',
    description: "Adidas Yeezy 380 v3 ..",
    price: '₦35,000',
    oldPrice: '₦50,000',
    discount: '31% OFF'
  ),
  Product(
    image: 'assets/images/organics_spa_7.jpg',
    description: "Adidas Yeezy 380 v3 ..",
    price: '₦35,000',
    oldPrice: '₦50,000',
    discount: '31% OFF'
  ),
  Product(
    image: 'assets/images/digital_13.jpg',
    description: "Adidas Yeezy 380 v3 ..",
    price: '₦35,000',
    oldPrice: '₦50,000',
    discount: '31% OFF'
  ),
  Product(
    image: 'assets/images/fashion_05.jpg',
    description: "Adidas Yeezy 380 v3 ..",
    price: '₦35,000',
    oldPrice: '₦50,000',
    discount: '31% OFF'
  ),
  Product(
    image: 'assets/images/digital_11.jpg',
    description: "Adidas Yeezy 380 v3 ..",
    price: '₦35,000',
    oldPrice: '₦50,000',
    discount: '31% OFF'
  ),
  Product(
    image: 'assets/images/fashion_03.jpg',
    description: "Adidas Yeezy 380 v3 ..",
    price: '₦35,000',
    oldPrice: '₦50,000',
    discount: '31% OFF'
  ),
];
