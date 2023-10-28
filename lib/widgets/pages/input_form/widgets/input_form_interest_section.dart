import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/hobby.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/pages/input_form/widgets/input_form_common_list_item.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/pages/select_hobby_list/select_hobby_list_page.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力フォーム趣味セクション.
class InputFormInterestSection extends StatelessWidget {
  const InputFormInterestSection({super.key});

  @override
  Widget build(BuildContext context) {
    final hobbies = context.select((InputModel state) => state.hobbies);
    return InputFormCommonListItem(
      crossAxisAlignment: CrossAxisAlignment.start,
      heading: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          '趣味',
          style: SampleAppTextStyles.main,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hobbies.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  hobbies.map((e) => e.text).join(','),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 1.6,
                  ),
                ),
              ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                child: const Text('変更'),
                onPressed: () async {
                  // 画面遷移と遷移先からの値の受け渡しを実行している。
                  // 非同期処理で遷移処理をawaitで待ち合わせる事により値を受け取ることができる。
                  // 他にもCompleterなどを使う方法もある。
                  // Navigator2.0を採用している場合はCompleterを使用する方法がベスト。
                  context.read<InputFormPageNotifier>().hobbies =
                      await Navigator.of(context).push<List<Hobby>?>(
                    SelectHobbyListPage.pageRoute(selectedHobbies: hobbies),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
