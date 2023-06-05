import 'package:flutter/material.dart';

// class product_details_page {
//   final String id, price, title, images, description;
//   final int rating;
//
//   product_details_page({
//    this.id,
//    this.price,
//    this.title,
//    this.images,
//    this.description,
//    this.rating,
// });
// }
//
// List<product_details_page> product = [
//   product_details_page(
//       "id": "0",
//       "price": "$ 120.00",
//       "title": "DESTEK V5 VR Headset",
//       "images": "https://i.postimg.cc/L6rzhPQj/1-Varjo-VR-3.png",
//       "rating": 4.5,
//       "description": "Comfortable & lightweight – Compare to market 3D VR headset, Our VR headset decreased in weight due to plastic component swaps and improvements in manufacturing. The virtual reality headset for kids only weights 9.9oz, it significantly reduce the pressure with the help of adjustable head strap design, making it tight but fairly comfortable fit. The removable facepad of VR head set with hand controllers is made of ultra-soft washable breathing Fabric, helping you stay comfortable during use",
//   )
//
// ]

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}
