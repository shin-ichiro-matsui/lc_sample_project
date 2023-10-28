
/// 性別.
enum Sex {
  man, woman
}

extension SexExtension on Sex {
  String get text => this == Sex.man ? '男' : '女';
}
