import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/models/values/sex.dart';
import 'package:lc_sample_project/widgets/common_list_item.dart';
import 'package:lc_sample_project/widgets/page/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

class InputFormSexRow extends StatelessWidget {
  const InputFormSexRow({super.key});

  @override
  Widget build(BuildContext context) {
    // クラス内で同じ値を複数箇所見てリビルドする必要があるときは、
    // buildメソッドでcontext.selectをすることで値の変更を監視してリビルドすることができる。
    final sex = context.select((InputModel state) => state.sex);

    return CommonListItem(
      // const はリビルドされない
      heading: const Text(
        '性別',
        style: SampleAppTextStyles.main,
      ),
      child: Row(
        children: [
          Radio(
            value: Sex.man,
            groupValue: sex,
            onChanged: (_) {
              context.read<InputFormPageNotifier>().sex = Sex.man;
            },
          ),
          const Text(
            '男',
            style: SampleAppTextStyles.main,
          ),
          Radio(
            value: Sex.woman,
            groupValue: sex,
            onChanged: (_) {
              context.read<InputFormPageNotifier>().sex = Sex.woman;
            },
          ),
          const Text(
            '女',
            style: SampleAppTextStyles.main,
          ),
        ],
      ),
    );
  }
}
