
import 'package:flutter/material.dart';

/// 枠線ありの共通ドロップダウンボタン。
class RectangleBorderedDropdownButton<T> extends StatelessWidget {
  const RectangleBorderedDropdownButton({
    Key? key,
    required this.items,
    this.value,
    this.onChanged,
    this.selectedItemBuilder,
  }) : super(key: key);

  /// ドロップダウン表示するアイテム。
  final List<DropdownMenuItem<T>> items;

  /// 選択済みアイテム。
  final T? value;

  /// ドロップダウン選択時コールバック。
  final ValueChanged<T?>? onChanged;

  /// 選択済みアイテムをカスタマイズする用のビルダー。
  ///
  /// ドロップダウンアイテム選択時、通常はDropdownMenuItemがそのまま表示されるが
  /// このビルダーで選択済みアイテムをカスタマイズできる。
  final DropdownButtonBuilder? selectedItemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFBCB6B3),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: DropdownButton<T>(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        icon: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.arrow_drop_down,
              color: Color(0xFF7C6E6B),
            ),
            SizedBox(width: 4),
          ],
        ),
        isExpanded: true,
        items: items,
        underline: const SizedBox.shrink(),
        menuMaxHeight: 380,
        value: value,
        selectedItemBuilder: selectedItemBuilder,
        onChanged: onChanged,
      ),
    );
  }
}
