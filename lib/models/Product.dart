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
      image: 'assets/images/bag1.jpg',
      description: "Adidas Yeezy 380 v3 ..",
      price: '₦35,000',
      oldPrice: '₦50,000',
      discount: '31% OFF'),
  Product(
      image: 'assets/images/phone.jpg',
      description: "Adidas Yeezy 380 v3 ..",
      price: '₦35,000',
      oldPrice: '₦50,000',
      discount: '31% OFF'),
  Product(
      image: 'assets/images/phone1.jpg',
      description: "Adidas Yeezy 380 v3 ..",
      price: '₦35,000',
      oldPrice: '₦50,000',
      discount: '31% OFF'),
  Product(
      image: 'assets/images/fashion_09.jpg',
      description: "Adidas Yeezy 380 v3 ..",
      price: '₦35,000',
      oldPrice: '₦50,000',
      discount: '31% OFF'),
];
