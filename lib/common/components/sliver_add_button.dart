import 'package:flutter/material.dart';
import 'package:endava_profile_app/common/constants/palette.dart';

class SliverAddButton extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;
  final EdgeInsets padding;

  SliverAddButton({this.title, this.onTap, this.padding});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: this.padding ?? const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    size: 32,
                    color: Palette.darkGray,
                  ),
                  SizedBox(width: 3),
                  Text(
                    title,
                    style: TextStyle(
                        color: Palette.darkGray,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
