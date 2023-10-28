import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/models/values/profession.dart';
import 'package:lc_sample_project/widgets/pages/input_form/widgets/input_form_common_list_item.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/rectangle_bordered_dropdown_button.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力フォーム職業選択セクション.
class InputFormProfessionSelectSection extends StatelessWidget {
  const InputFormProfessionSelectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = context.select(
      (InputModel state) => state.profession,
    );

    return InputFormCommonListItem(
      heading: const Text(
        '職業',
        style: SampleAppTextStyles.main,
      ),
      child: RectangleBorderedDropdownButton<Profession>(
        value: selectedValue,
        // valuesでenumをListで取得
        // => mapでenumの値を使用してDropdownMenuItemに変換
        // => toListでList<DropdownMenuItem>の形式で返却
        items: Profession.values
            .map(
              (e) => DropdownMenuItem<Profession>(
                value: e,
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Text(e.text),
                  ],
                ),
              ),
            )
            .toList(),
        onChanged: (value) {
          context.read<InputFormPageNotifier>().profession = value;
        },
      ),
    );
  }
}
