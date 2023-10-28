import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/page/input_confirm/input_confirm_headings.dart';
import 'package:lc_sample_project/widgets/page/input_confirm/widgets/input_confirm_value_column.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力確認ページ.
class InputConfirmPage extends StatelessWidget {
  const InputConfirmPage({super.key});

  /// [MaterialPageRoute]を返す.
  static MaterialPageRoute pageRoute({
    required InputModel inputModel,
  }) =>
      MaterialPageRoute(
        // Providerで入力フォームで入力した値のモデルクラスを伝播することでcontextから取得できる。
        builder: (_) => Provider.value(
          value: inputModel,
          child: const InputConfirmPage(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('入力内容の確認'),
      ),
      body: SingleChildScrollView(
        child: Table(
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(3),
          },
          border: TableBorder.all(),
          children: InputConfirmHeadings.values
              .map(
                (e) => TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        '${e.text} :',
                        style: SampleAppTextStyles.main,
                      ),
                    ),
                    Provider.value(
                      value: e,
                      child: const InputConfirmValueColumn(),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
