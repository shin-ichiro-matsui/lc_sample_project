import 'package:flutter/material.dart';

/// 趣味選択リストアイテム.
class SelectHobbyListItem extends StatefulWidget {
  const SelectHobbyListItem({
    super.key,
    required this.itemName,
    required this.isSelected,
    required this.onSelected,
  });

  /// アイテム名.
  final String itemName;

  /// 選択済みか否か.
  final bool isSelected;

  /// アイテム選択コールバック.
  final Function(bool) onSelected;

  @override
  State<StatefulWidget> createState() => SelectHobbyListItemState();
}

class SelectHobbyListItemState extends State<SelectHobbyListItem> {
  late bool isSelected;

  @override
  Widget build(BuildContext context) {
    isSelected = widget.isSelected;
    return ListTile(
      title: Row(
        children: [
          Checkbox(
            value: isSelected,
            onChanged: (selected) {
              _onItemTap(selected ?? false);
            },
          ),
          // マージン
          const SizedBox(width: 10),
          Text(widget.itemName),
        ],
      ),
      onTap: () {
        _onItemTap(!isSelected);
      },
      // この辺デザイン適当
      contentPadding: const EdgeInsets.all(8),
    );
  }

  /// アイテム自体の押下処理
  void _onItemTap(bool selected) {
    setState(() {
      isSelected = selected;
    });
    widget.onSelected(selected);
  }
}
