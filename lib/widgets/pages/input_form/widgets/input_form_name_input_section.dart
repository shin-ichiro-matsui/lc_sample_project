import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/pages/input_form/widgets/input_form_common_list_item.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/pages/input_form/widgets/input_form_text_field.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力フォーム指名入力セクション.
class InputFormNameInputSection extends StatelessWidget {
  const InputFormNameInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InputFormCommonListItem(
      heading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '氏名',
            style: SampleAppTextStyles.main,
          ),
          // 部分的にリビルドで更新書ける場合Consumerが便利だが冗長かつネストが深くなる。
          // こういう場合別クラス化すると良い。
          // 大体アプリ内のデザインガイドラインでラベルデザイン等は共通化されるので
          // ラベルという単位で共通Widget化などすると良い。
          Consumer<InputModel>(
            builder: (context, state, _) {
              if (state.isNameEntered) {
                return const SizedBox.shrink();
              }
              return Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    child: const Text(
                      '必須',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
      child: Row(
        children: [
          InputFormTextField(
            hint: '姓',
            onChanged: (value) {
              context.read<InputFormPageNotifier>().familyName = value;
            },
          ),
          InputFormTextField(
            hint: '名',
            onChanged: (value) {
              context.read<InputFormPageNotifier>().firstName = value;
            },
          ),
        ],
      ),
    );
  }
}
