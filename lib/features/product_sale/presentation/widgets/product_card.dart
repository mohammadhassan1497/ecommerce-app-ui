import 'package:flutter/material.dart';

import '../../../../config/config.dart';

class ProductCardWidget extends StatelessWidget {
  final Map product;
  const ProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(7, 0, 7, 25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              product['image'],
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : Container(
                          alignment: Alignment.center,
                          height: 120,
                          child: const CircularProgressIndicator(),
                        ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            product['name'],
            style: textTheme().bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            '\$${product['price']}',
            style: textTheme().bodyMedium?.copyWith(
                  color: kColorPrimary,
                ),
          ),
        ],
      ),
    );
  }
}
