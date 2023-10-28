import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/hobby.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/common_list_item.dart';
import 'package:lc_sample_project/widgets/page/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/page/select_hobby_list/select_hobby_list_page.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力フォーム趣味セクション.
class InputFormInterestSection extends StatelessWidget {
  const InputFormInterestSection({super.key});

  @override
  Widget build(BuildContext context) {
    final hobbies = context.select((InputModel state) => state.hobbies);
    return CommonListItem(
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
