import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/pages/input_form/input_form_page_notifier.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

/// 入力フォーム利用規約同意セクション.
class InputFormTermsOfServiceRow extends StatelessWidget {
  const InputFormTermsOfServiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    final consent = context.select(
      (InputModel state) => state.consent,
    );

    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Checkbox(
            value: consent,
            onChanged: (value) {
              context.read<InputFormPageNotifier>().consent = value;
            },
          ),
          Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 18),
              children: [
                TextSpan(
                  text: '利用規約',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // テキストリンクタップ処理
                      // 現在Flutter標準でテキストリンクを実装できるWidgetは用意されていない。
                      // 外部遷移するにはurl_launcherというpluginを入れる必要がある。
                      launchUrl(
                        Uri.parse('https://beanslabo.co.jp/member/Ga-hi-/'),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                ),
                const TextSpan(text: 'に同意する'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
