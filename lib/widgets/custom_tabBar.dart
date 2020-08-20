import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function onTap;
  final bool isBottomIndicator;

  CustomTabBar({
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
    this.isBottomIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? Border(
                bottom: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Palette.facebookBlue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons
          .asMap()
          .map((i, icon) => MapEntry(
              i,
              Tab(
                  icon: Icon(
                icon,
                size: 30.0,
                color:
                    i == selectedIndex ? Palette.facebookBlue : Colors.black45,
              ))))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
