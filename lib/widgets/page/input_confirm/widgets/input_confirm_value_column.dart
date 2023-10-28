import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/hobby.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/models/values/profession.dart';
import 'package:lc_sample_project/models/values/sex.dart';
import 'package:lc_sample_project/widgets/page/input_confirm/input_confirm_headings.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力内容確認画面の入力値列.
class InputConfirmValueColumn extends StatelessWidget {
  const InputConfirmValueColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.read<InputConfirmHeadings>();
    final model = context.read<InputModel>();
    final Widget child;
    switch (value) {
      case InputConfirmHeadings.name:
        child = Text.rich(
          TextSpan(
            children: [
              TextSpan(text: model.familyName),
              const WidgetSpan(
                child: SizedBox(width: 10),
              ),
              TextSpan(text: model.firstName),
            ],
          ),
        );
        break;
      case InputConfirmHeadings.sex:
        child = Text(model.sex?.text ?? '');
        break;
      case InputConfirmHeadings.telephoneNumber:
        child = Text(model.telephoneNumber);
        break;
      case InputConfirmHeadings.hobby:
        child = Text(model.hobbies.map((e) => e.text).join(', '));
        break;
      case InputConfirmHeadings.profession:
        child = Text(model.profession?.text ?? '');
        break;
    }
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DefaultTextStyle.merge(
        style: SampleAppTextStyles.main,
        child: child,
      ),
    );
  }
}
