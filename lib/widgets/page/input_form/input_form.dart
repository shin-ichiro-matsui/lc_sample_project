import 'package:flutter/material.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_complete_button.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_interest_section.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_name_row.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_profession_row.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_sex_row.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_telephone_number_row.dart';
import 'package:lc_sample_project/widgets/page/input_form/widgets/input_form_terms_of_service_row.dart';

/// 入力フォームページ.
class InputFormPage extends StatelessWidget {
  const InputFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('入力フォーム'),
      ),
      body: ListView(
        children: const [
          InputFormNameRow(),
          InputFormSexRow(),
          InputFormTelephoneNumberRow(),
          InputFormInterestSection(),
          // マージンの付け方は色々ある、PaddingWidgetを使うのも良いが時と場合によってはSizedBoxを使ったほうが良い場合もある。
          // ネストが深くなったりリビルド範囲が増えたり、その場合はSizedBoxで置くほうが何かと便利な場合がある。
          SizedBox(height: 10),
          InputFormProfessionRow(),
          InputFormTermsOfServiceRow()
        ],
      ),
      bottomNavigationBar: const InputFormCompleteButton(),
    );
  }
}
