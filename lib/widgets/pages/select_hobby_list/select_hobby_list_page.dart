import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/hobby.dart';
import 'package:lc_sample_project/widgets/bottom_bar_button.dart';
import 'package:lc_sample_project/widgets/pages/select_hobby_list/widgets/select_hobby_list_item.dart';

/// 趣味設定リストページ.
///
/// StatefulWidgetで１画面つくる場合のサンプル。
class SelectHobbyListPage extends StatefulWidget {
  const SelectHobbyListPage({
    super.key,
    required this.selectedHobbies,
  });

  /// [MaterialPageRoute]を返す.
  static MaterialPageRoute<List<Hobby>?> pageRoute({
    required List<Hobby> selectedHobbies,
  }) =>
      MaterialPageRoute<List<Hobby>?>(
        builder: (_) => SelectHobbyListPage(
          selectedHobbies: selectedHobbies,
        ),
      );

  final List<Hobby> selectedHobbies;

  @override
  State<StatefulWidget> createState() => SelectHobbyListPageState();
}

class SelectHobbyListPageState extends State<SelectHobbyListPage> {
  final List<Hobby> selectedHobbies = [];

  @override
  void initState() {
    selectedHobbies.addAll(widget.selectedHobbies);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('趣味'),
        actions: [
          TextButton(
            child: const Text(
              'クリア',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () => setState(() {
              selectedHobbies.clear();
            }),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: Hobby.values.length,
        itemBuilder: (_, index) {
          final hobby = Hobby.values[index];
          return SelectHobbyListItem(
            itemName: hobby.text,
            // 一覧の該当の趣味が選択済みか否か
            isSelected: selectedHobbies.contains(hobby),
            onSelected: (isSelected) => _onCheckChanged(
              selectHobby: hobby,
              isSelected: isSelected,
            ),
          );
        },
        separatorBuilder: (_, __) => const Divider(
          height: 1,
          color: Colors.black45,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
            width: 1,
          )),
        ),
        height: 70,
        padding: const EdgeInsets.all(8),
        child: BottomBarButton(
          type: ButtonType.setting,
          child: Text(ButtonType.setting.text),
          onPressed: () {
            // 設定した値の返却
            Navigator.of(context).pop(selectedHobbies);
          },
        ),
      ),
    );
  }

  /// チェック変更時コールバック.
  void _onCheckChanged({
    required Hobby selectHobby,
    required bool isSelected,
  }) {
    setState(() {
      if (isSelected) {
        selectedHobbies.add(selectHobby);
      } else {
        selectedHobbies.remove(selectHobby);
      }
    });
  }
}
