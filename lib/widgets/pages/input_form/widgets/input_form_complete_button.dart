import 'package:flutter/material.dart';
import 'package:lc_sample_project/models/values/input_model.dart';
import 'package:lc_sample_project/widgets/bottom_bar_button.dart';
import 'package:lc_sample_project/widgets/pages/input_confirm/input_confirm_page.dart';
import 'package:provider/provider.dart';

/// 入力フォーム入力完了ボタン
class InputFormCompleteButton extends StatelessWidget {
  const InputFormCompleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final consent = context.select((InputModel state) => state.consent);
    final isNameEntered = context.select(
      (InputModel state) => state.isNameEntered,
    );

    return Container(
      decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(
          width: 1,
        )),
      ),
      height: 70,
      padding: const EdgeInsets.all(10),
      child: BottomBarButton(
        type: ButtonType.complete,
        onPressed: consent
            ? () {
                if (isNameEntered) {
                  // 入力内容確認ページへ遷移
                  // 入力ページで使用していたモデルクラスをそのまま受け渡している。
                  Navigator.of(context).push(
                    InputConfirmPage.pageRoute(
                      inputModel: context.read<InputModel>(),
                    ),
                  );
                } else {
                  // if (!context.mounted) {
                  //   // 非同期処理でダイアログを表示する場合などはcontextのマウントが外れている場合がある。
                  //   // そういった場合例外が発生するのでcontext.mountedでマウントされているか判定して
                  //   // 回避コードを実装すると良い。
                  //   return;
                  // }
                  showDialog(
                    context: context,
                    // barrierDismissibleを指定すると画面外タップで閉じなくなる
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      title: const Text('サンプルアラートダイアログ'),
                      content: const Text('氏名を入力してください。 \n閉じるを押さないと消えないダイアログ。'),
                      actions: [
                        ElevatedButton(
                          child: const Text('閉じる'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  );
                }
              }
            : null,
        child: Text(ButtonType.complete.text),
      ),
    );
  }
}
