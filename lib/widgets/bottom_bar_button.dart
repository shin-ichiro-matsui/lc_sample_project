import 'package:flutter/material.dart';

/// ボトムバーボタン.
class BottomBarButton extends ElevatedButton {
  const BottomBarButton({
    required super.child,
    required super.onPressed,
    required this.type,
    super.key,
  });

  final ButtonType type;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return super.defaultStyleOf(context).copyWith(
          textStyle: _BottomBarButtonTextColor(),
          backgroundColor: _BottomBarButtonColor(
            enabled: type == ButtonType.complete
                ? Colors.deepOrangeAccent
                : Colors.green,
            disabled: const Color(0xFFCCCCCC),
          ),
          foregroundColor: _BottomBarButtonColor(
            enabled: Colors.white,
            disabled: const Color(0xFF999999),
          ),
          overlayColor: _BottomBarButtonOverlay(
            foreground: Colors.white,
          ),
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
          minimumSize: const MaterialStatePropertyAll<Size>(Size(88, 36)),
          shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
          ),
          splashFactory: InkSplash.splashFactory,
        );
  }
}

enum ButtonType { complete, setting }

extension ButtonTypeExtension on ButtonType {
  String get text {
    switch (this) {
      case ButtonType.complete:
        return '入力完了';
      case ButtonType.setting:
        return '設定';
    }
  }
}

/// ボタンの基本色を表現する[MaterialStateProperty]。
class _BottomBarButtonColor extends MaterialStateProperty<Color> {
  _BottomBarButtonColor({
    required this.enabled,
    required this.disabled,
  });

  /// 活性時の色。
  final Color enabled;

  /// 非活性時の色。
  final Color disabled;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return disabled;
    }
    return enabled;
  }
}

/// ボタンのOverlay色を表現する[MaterialStateProperty]。
class _BottomBarButtonOverlay extends MaterialStateProperty<Color> {
  _BottomBarButtonOverlay({required this.foreground});

  /// Overlayの基本色。
  final Color foreground;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return foreground.withOpacity(0.16);
    }
    return Colors.transparent;
  }
}

/// ボタンの文字色を表現する[MaterialStateProperty]。
class _BottomBarButtonTextColor extends MaterialStateProperty<TextStyle> {
  @override
  TextStyle resolve(Set<MaterialState> states) {
    return const TextStyle(color: Colors.white);
  }
}
