import 'package:flutter/material.dart';

class DismissibleItem<T> extends StatelessWidget {
  final T item;
  final Widget child;
  final DismissDirectionCallback onDismissed;
  final ConfirmDismissCallback confirmDismiss;

  const DismissibleItem({
    required this.item,
    required this.child,
    required this.onDismissed,
    required this.confirmDismiss,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Dismissible(
        key: ObjectKey(item),
        background: buildSwipeActionLeft(),
        secondaryBackground: buildSwipeActionRight(),
        onDismissed: onDismissed,
        confirmDismiss: confirmDismiss,
        direction: DismissDirection.endToStart,
        child: child,
      );

  Widget buildSwipeActionLeft() => Container(
        alignment: AlignmentDirectional.centerStart,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.green,
        child: const Icon(Icons.archive_sharp, color: Colors.white, size: 32),
      );

  Widget buildSwipeActionRight() => Container(
        alignment: AlignmentDirectional.centerEnd,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.red,
        child: const Icon(Icons.delete_forever, color: Colors.white, size: 32),
      );
}
