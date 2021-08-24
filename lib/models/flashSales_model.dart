import 'package:shopping_app/models/activities_model.dart';
import 'activities_model.dart';

class FlashItems {
  String imageUrl;
  List<Activity> activities;
  String price;

  FlashItems({
    required this.imageUrl,
    required this.activities,
    required this.price,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/home-2-banner-1.jpg',
    price: '₦400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/blog-article-5.jpg',
    price: '₦400',
    items: [],
  ),
  Activity(
      imageUrl: 'assets/images/main-slider-2-1.jpg', price: '₦400', items: []),
  Activity(
    imageUrl: 'assets/images/main-slider-2-3.jpg',
    price: '₦400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/2-megamenu_tool_equiment_banner_2.jpg',
    price: '₦400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/2-smartphone-laptop-banner-1.jpg',
    price: '₦400',
    items: [],
  ),
  Activity(
    imageUrl: 'assets/images/home-2-banner-1.jpg',
    price: '₦400',
    items: [],
  ),
];

List<FlashItems> flashsales = [
  FlashItems(
    imageUrl: 'assets/images/download7.jpg',
    price: '₦400',
    activities: activities,
  ),
  FlashItems(
    imageUrl: 'assets/images/download5.jpg',
    price: '₦400',
    activities: activities,
  ),
  FlashItems(
    imageUrl: 'assets/images/fashion_05.jpg',
    price: '₦400',
    activities: activities,
  ),
  FlashItems(
    imageUrl: 'assets/images/download3.jpg',
    price: '₦400',
    activities: activities,
  ),
  FlashItems(
    imageUrl: 'assets/images/download4.jpg',
    price: '₦400',
    activities: activities,
  ),
  FlashItems(
    imageUrl: 'assets/images/digital_05.jpg',
    price: '₦400',
    activities: activities,
  ),
];
