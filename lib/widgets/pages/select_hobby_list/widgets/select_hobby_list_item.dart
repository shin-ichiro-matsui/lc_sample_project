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
  ///
  /// - 細分化したWidget内部で選択の状態をもたせたところで、
  /// 親Widgetに状態を伝えるためにはコールバックを用意する必要がある。
  /// - 親Widgetが保持しているデータの状態と、Widget独自で持っている状態で食い違いが起こりやすく、
  /// 不具合に繋がりやすいのでProviderパターンでページ唯一の状態をもたせる実装のほうがシンプルかつ保守性に優れる場合がある。
  final Function(bool) onSelected;

  @override
  State<StatefulWidget> createState() => SelectHobbyListItemState();
}

class SelectHobbyListItemState extends State<SelectHobbyListItem> {
  /// 選択状態.
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
    // 親Widgetに値を返すためにコールバックで引数を受け渡す。
    widget.onSelected(selected);
  }
}
