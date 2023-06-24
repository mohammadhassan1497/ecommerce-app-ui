import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../config/config.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wishlist',
              style: textTheme().headlineLarge,
            ),
            Expanded(
              child: AlignedGridView.count(
                padding: const EdgeInsets.only(top: 20),
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                itemCount: dummyMobileData.length,
                itemBuilder: (context, index) =>
                    ProductCardWidget(product: dummyMobileData[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
