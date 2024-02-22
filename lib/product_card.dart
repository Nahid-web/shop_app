import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    super.key,
    required this.tittle,
    required this.price,
    required this.image,
    required this.backgroundColor,
  });

  final String tittle;
  final double price;
  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tittle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            '\$$price}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Center(
            child: Image.asset(
              image,
              height: 175,
            ),
          ),
        ],
      ),
    );
  }
}
