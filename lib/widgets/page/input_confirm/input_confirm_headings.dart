enum InputConfirmHeadings {
  name,
  sex,
  telephoneNumber,
  hobby,
  profession,
}

extension InputConfirmHeadingsExtension on InputConfirmHeadings {
  String get text {
    switch (this) {
      case InputConfirmHeadings.name:
        return '名前';
      case InputConfirmHeadings.sex:
        return '性別';
      case InputConfirmHeadings.telephoneNumber:
        return '電話番号';
      case InputConfirmHeadings.hobby:
        return '趣味';
      case InputConfirmHeadings.profession:
        return '職業';
    }
  }

  List<InputConfirmHeadings> get entries => [

  ];
}
