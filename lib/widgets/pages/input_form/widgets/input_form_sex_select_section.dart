import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/models/values/sex.dart';
import 'package:lc_sample_project/widgets/pages/input_form/widgets/input_form_common_list_item.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力フォーム性別選択セクション.
class InputFormSexSelectSection extends StatelessWidget {
  const InputFormSexSelectSection({super.key});

  @override
  Widget build(BuildContext context) {
    // クラス内で同じ値を複数箇所見てリビルドする必要があるときは、
    // buildメソッドでcontext.selectをすることで値の変更を監視してリビルドすることができる。
    // ConsumerWidgetを使うほどではない場合、ネストを深くしたくない場合はこの方法がシンプル。
    final sex = context.select((InputModel state) => state.sex);

    return DefaultTextStyle.merge(
      style: SampleAppTextStyles.main,
      child: InputFormCommonListItem(
        heading: const Text('性別'),
        child: Row(
          children: [
            Radio<Sex>(
              value: Sex.man,
              groupValue: sex,
              onChanged: (value) {
                context.read<InputFormPageNotifier>().sex = value;
              },
            ),
            Text(Sex.man.text),
            Radio<Sex>(
              value: Sex.woman,
              groupValue: sex,
              onChanged: (value) {
                context.read<InputFormPageNotifier>().sex = value;
              },
            ),
            Text(Sex.woman.text),
          ],
        ),
      ),
    );
  }
}
