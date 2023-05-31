import 'package:flutter/material.dart';

import '../model/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Image.asset(
                image,
                height: 132,
                fit: BoxFit.cover, // Set the image to cover the container
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
              maxLines: 1, // Limit the title to 1 line
              overflow: TextOverflow
                  .ellipsis, // Show ellipsis (...) when the title overflows
            ),
            const SizedBox(height: defaultPadding / 4),
            Text(
              "\Rp $price",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
