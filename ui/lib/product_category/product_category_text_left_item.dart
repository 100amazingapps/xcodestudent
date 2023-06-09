import 'package:flutter/material.dart';

class ProductCategoryTextLeftItem extends StatelessWidget {
  final Function onTap;
  final Widget name;
  final Widget? image;
  final Widget? count;
  final Widget? iconRight;
  final Widget? child;
  final double basePadding;

  const ProductCategoryTextLeftItem({
    Key? key,
    required this.onTap,
    required this.name,
    this.image,
    this.count,
    this.iconRight,
    this.child,
    this.basePadding = 8,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(minHeight: 58),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            children: [
              if (image != null)
                Padding(
                  padding: EdgeInsetsDirectional.only(end: basePadding),
                  child: GestureDetector(
                    onTap: () => onTap(),
                    child: image,
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2 * basePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => onTap(),
                        child: name,
                      ),
                    ],
                  ),
                ),
              ),
              if (count != null)
                Padding(
                  padding: EdgeInsetsDirectional.only(start: basePadding),
                  child: count,
                ),
              if (iconRight != null)
                Padding(
                  padding: EdgeInsetsDirectional.only(start: basePadding),
                  child: iconRight,
                )
            ],
          ),
        ),
        child ?? Container(),
      ],
    );
  }
}
