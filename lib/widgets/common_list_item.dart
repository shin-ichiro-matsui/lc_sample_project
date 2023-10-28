import 'package:flutter/material.dart';

/// 共通リストアイテム.
class CommonListItem extends StatelessWidget {
  const CommonListItem({
    super.key,
    required this.heading,
    required this.child,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  /// 見出し.
  final Widget heading;

  /// 子要素.
  final Widget child;

  /// [CrossAxisAlignment].
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        const SizedBox(width: 8),
        Expanded(
          child: heading,
        ),
        Flexible(
          flex: 2,
          child: child,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
