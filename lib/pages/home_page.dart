import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TextStyle headingStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enjoy the world\ninto virtual reality',
              style: headingStyle,
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const BannerCard(),
            SizedBox(
              height: 80.0,
              child:
              ListView(scrollDirection: Axis.horizontal, children: const [
                TagBox(
                  tagText: "All Products",
                ),
                TagBox(
                  tagText: "Popular",
                ),
                TagBox(
                  tagText: "Recent",
                ),
                TagBox(
                  tagText: "Trending",
                ),
              ]),
            ),
            const SizedBox(height: 20),
            SizedBox(
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [ProductCard(), ProductCard(), ProductCard()],
                ))
          ],
        ),
      ),
    );
  }
}

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});
  static const TextStyle bannerStyle =
  TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Improved Controller\nDesign with\nVirtual Reality",
                style: bannerStyle,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  "Buy now!",
                  style: TextStyle(fontSize: 20, color: Colors.blue[400]),
                ),
                onPressed: () {},
              )
            ],
          ),
          Image.network(
            'https://i.postimg.cc/L6rzhPQj/1-Varjo-VR-3.png',
            // width: 100,
          ),
        ],
      ),
    );
  }
}

class TagBox extends StatelessWidget {
  const TagBox({super.key, required this.tagText});

  final String tagText;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              tagText,
              style: const TextStyle(fontSize: 15),
            ),
            onPressed: () {},
          ),
        ));
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  static const TextStyle productName = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle productPrice = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  width: 40,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: const Icon(FeatherIcons.plus)),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://i.postimg.cc/L6rzhPQj/1-Varjo-VR-3.png",
                          height: 150,
                          width: 150,
                        ),
                        const Text(
                          "HP Reverb adwdaw",
                          style: productName,
                        ),
                        SizedBox(height: 10),
                        const Text(
                          "\$ 10.29",
                          style: productPrice,
                        ),
                        SizedBox(height: 20),
                      ]),
                )
              ],
            )));
  }
}
