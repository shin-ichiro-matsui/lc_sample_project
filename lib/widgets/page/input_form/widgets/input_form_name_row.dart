import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/common_list_item.dart';
import 'package:lc_sample_project/widgets/page/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_text_field.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

class InputFormNameRow extends StatelessWidget {
  const InputFormNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonListItem(
      heading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '氏名',
            style: SampleAppTextStyles.main,
          ),
          // 部分的にリビルドで更新書ける場合Consumerが便利だが冗長になる。
          Consumer<InputModel>(
            builder: (context, state, _) {
              if (!state.isNameEntered) {
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
              }
              return const SizedBox.shrink();
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
