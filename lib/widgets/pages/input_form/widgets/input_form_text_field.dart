import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 入力フォームで扱うテキスト入力フィールド.
///
/// デザインは適当。
class InputFormTextField extends StatelessWidget {
  const InputFormTextField({
    super.key,
    required this.hint,
    required this.onChanged,
    this.keyboardType,
    this.inputFormatters,
    this.maxLength,
  });

  /// ヒント.
  ///
  /// 入力フォームに表示するヒントテキストを外から設定するためのフィールド。
  final String hint;

  /// キーボードタイプ.
  ///
  /// 入力の歳のキーボードタイプを設定します。
  /// 例) 数値のみを入力させたい場合は[TextInputType.number]を指定。
  /// ただし、この指定だけでは文字のペーストや記号の入力ができてしまうので、
  /// 数値だけ入力させたい場合は[inputFormatters]と併用すると良い。
  /// その場合[inputFormatters]には[FilteringTextInputFormatter.digitsOnly]を設定すると良い。
  /// 等色々あるので調べてみると面白いかも。
  final TextInputType? keyboardType;

  /// 入力テキストのフォーマッター.
  ///
  /// 入力されたテキストをフォーマットします。
  /// [keyboardType]と併用することでより入力文字に制限をかけられます。
  final List<TextInputFormatter>? inputFormatters;

  /// テキスト変更コールバック.
  ///
  /// - 共通のWidgetを作る上でコールバックは外から設定する場合は多い。
  /// - プログラムで入力テキストが変更された場合は呼び出されないので注意。
  /// そういった実装がある場合は[TextEditingController]によるListenerパターンで実装する。
  final ValueChanged<String> onChanged;

  /// 最大文字数.
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 4
        ),
        child: TextFormField(
          style: const TextStyle(
            fontSize: 18,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8),
            hintText: hint,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
                width: 1,
              ),
            ),
          ),
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
