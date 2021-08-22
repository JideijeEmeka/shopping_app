import 'package:shopping_app/models/activities_model.dart';
import 'activities_model.dart';

class SellingItems {
  String imageUrl;
  List<Activity> activities;
  String price;

  SellingItems({
    required this.imageUrl,
    required this.activities,
    required this.price,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/home-2-banner-1.jpg',
    price: '₦3,400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/blog-article-5.jpg',
    price: '₦3,400',
    items: [],
  ),
  Activity(
      imageUrl: 'assets/images/main-slider-2-1.jpg',
      price: '₦3,400',
      items: []),
  Activity(
    imageUrl: 'assets/images/main-slider-2-3.jpg',
    price: '₦3,400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/2-megamenu_tool_equiment_banner_2.jpg',
    price: '₦3,400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/2-smartphone-laptop-banner-1.jpg',
    price: '₦3,400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/home-2-banner-1.jpg',
    price: '₦3,400',
    items: [],
  ),
];

List<SellingItems> sellingitems = [
  SellingItems(
    imageUrl: 'assets/images/home-2-banner-1.jpg',
    price: '₦3,400',
    activities: activities,
  ),
  SellingItems(
    imageUrl: 'assets/images/3-slide-banner-1.jpg',
    price: '₦3,400',
    activities: activities,
  ),
  SellingItems(
    imageUrl: 'assets/images/main-slider-2-1.jpg',
    price: '₦3,400',
    activities: activities,
  ),
  SellingItems(
    imageUrl: 'assets/images/main-slider-2-3.jpg',
    price: '₦3,400',
    activities: activities,
  ),
  SellingItems(
    imageUrl: 'assets/images/2-megamenu_tool_equiment_banner_2.jpg',
    price: '₦3,400',
    activities: activities,
  ),
  SellingItems(
    imageUrl: 'assets/images/2-smartphone-laptop-banner-1.jpg',
    price: '₦3,400',
    activities: activities,
  ),
  SellingItems(
    imageUrl: 'assets/images/blog-article-5.jpg',
    price: '₦3,400',
    activities: activities,
  ),
];
