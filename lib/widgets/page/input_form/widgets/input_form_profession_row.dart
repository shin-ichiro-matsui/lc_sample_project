import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/models/values/profession.dart';
import 'package:lc_sample_project/widgets/common_list_item.dart';
import 'package:lc_sample_project/widgets/page/input_form/input_form_page_notifier.dart';
import 'package:lc_sample_project/widgets/rectangle_bordered_dropdown_button.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

class InputFormProfessionRow extends StatelessWidget {
  const InputFormProfessionRow({super.key});

  static final List<Profession> professions = [
    Profession.applicationEngineer,
    Profession.webDirector,
    Profession.webDesigner,
    Profession.webProgrammer,
    Profession.pornStar,
    Profession.wiseMan,
    Profession.wizard,
  ];

  @override
  Widget build(BuildContext context) {
    final selectedValue = context.select(
      (InputModel state) => state.profession,
    );

    return CommonListItem(
      heading: const Text(
        '職業',
        style: SampleAppTextStyles.main,
      ),
      child: RectangleBorderedDropdownButton<Profession>(
        value: selectedValue,
        items: professions
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
