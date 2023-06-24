import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../injectable_config.dart';
import '../../../product_sale/presentation/pages/pages.dart';
import '../bloc/main_bloc.dart';

class MainPage extends StatefulWidget {
  static const String route = '/main';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final mainBloc = getIt<MainBloc>();

  @override
  void initState() {
    mainBloc.add(const SetMainBottomBarEvent(index: 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      bloc: mainBloc,
      builder: (context, state) {
        if (state is MainBottomBarLoadState) {
          return Scaffold(
            body: _bottomNavigationBar[state.index]['page'],
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: kColorPrimary,
              currentIndex: state.index,
              onTap: (index) =>
                  mainBloc.add(SetMainBottomBarEvent(index: index)),
              items: [
                for (Map<String, dynamic> item in _bottomNavigationBar)
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      item['icon'],
                      color: state.index == _bottomNavigationBar.indexOf(item)
                          ? kColorPrimary
                          : kColorGray,
                    ),
                    label: item['label'],
                  ),
              ],
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

List<Map<String, dynamic>> _bottomNavigationBar = [
  {"icon": kIconHome, "label": "Home", "page": const HomePage()},
  {"icon": kIconFavorite, "label": "Favorite", "page": const FavoritePage()},
  {"icon": kIconCategory, "label": "Category", "page": Container()},
  {"icon": kIconUser, "label": "User", "page": Container()},
];
