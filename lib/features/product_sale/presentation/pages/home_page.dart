import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(kIconCategorySolid),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(kIconCart),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your Phone',
              style: textTheme().headlineLarge,
            ),
            const SearchBoxWidget(),
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

const dummyMobileData = [
  {
    "name": "iPhone 13",
    "image":
        "https://images.moneycontrol.com/static-mcnews/2021/10/Apple-iPhone-13-4.jpg",
    "price": 1299
  },
  {
    "name": "Samsung Galaxy S21",
    "image":
        "https://www.trustedreviews.com/wp-content/uploads/sites/54/2021/01/DSC01626-scaled.jpeg",
    "price": 999
  },
  {
    "name": "Google Pixel 6",
    "image":
        "https://www.droid-life.com/wp-content/uploads/2021/10/Pixel-6-1-of-1-1200x900-cropped.jpg",
    "price": 899
  },
  {
    "name": "OnePlus 9 Pro",
    "image":
        "https://fs.npstatic.com/userfiles/7687254/image/OnePlus_9_Pro/NextPit_OnePlus_9_Pro_back-w810h462.jpg",
    "price": 899
  },
  {
    "name": "Xiaomi Mi 11",
    "image":
        "https://images.hothardware.com/contentimages/article/3083/content/4x3_1600x1200_highres-xiaomi-mi-11-review.jpg",
    "price": 799
  }
];
