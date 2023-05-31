import 'package:flutter/material.dart';
import '../model/constants.dart';
import '../model/kategori.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            "Kategori Pilihan",
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(
          height: 45,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: demo_categories.length,
            itemBuilder: (context, index) => CategoryButton(
              title: demo_categories[index].title,
              press: () {},
            ),
            separatorBuilder: (context, index) =>
                const SizedBox(width: defaultPadding),
          ),
        ),
      ],
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: defaultPadding / 2,
          horizontal: defaultPadding / 2,
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
