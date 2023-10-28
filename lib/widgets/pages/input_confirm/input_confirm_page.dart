import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/pages/input_confirm/input_confirm_headings.dart';
import 'package:lc_sample_project/widgets/pages/input_confirm/widgets/input_confirm_value_column.dart';
import 'package:lc_sample_project/widgets/sample_app_text_styles.dart';
import 'package:provider/provider.dart';

/// 入力確認ページ.
///
/// データを一覧化して表示する場合のサンプルとして[Table]を使用。
/// DBのデータを一覧化して表示する場合[DataTable]を使用すると便利だったりする。
/// デザイン指示によって使えず独自実装する場合が多いが、、
class InputConfirmPage extends StatelessWidget {
  const InputConfirmPage({super.key});

  /// [MaterialPageRoute]を返す.
  static MaterialPageRoute pageRoute({
    required InputModel inputModel,
  }) =>
      MaterialPageRoute(
        // Providerで入力フォームで入力した値のモデルクラスを伝播することでcontextから取得できる。
        // 読み取り専用の場合はProviderで伝播すれば十分な場合がほとんど。
        // 画面のStateにフィールドとして持たせる場合もあるが、Stateや状態管理が必要ない場合は
        // こういった実装にしておくと引数で引き回す必要がなくなる。
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
      // 表示する内容や画面サイズによってスクロールが必要な場合もあるので
      // [SingleChildScrollView]を使用している。
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
