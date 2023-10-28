import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lc_sample_project/widgets/common_list_item.dart';
import 'package:lc_sample_project/widgets/page/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_text_field.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

class InputFormTelephoneNumberRow extends StatelessWidget {
  const InputFormTelephoneNumberRow({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonListItem(
      crossAxisAlignment: CrossAxisAlignment.start,
      heading: const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          '電話番号',
          style: SampleAppTextStyles.main,
        ),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          InputFormTextField(
            hint: '電話番号',
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.phone,
            maxLength: 11,
            onChanged: (value) {
              context.read<InputFormPageNotifier>().telephoneNumber = value;
            },
          )
        ],
      ),
    );
  }
}
