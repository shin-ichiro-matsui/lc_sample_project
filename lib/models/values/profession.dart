
/// 職業.
enum Profession {
  applicationEngineer,
  webDirector,
  webDesigner,
  webProgrammer,
  pornStar,
  wiseMan,
  wizard,
}

extension ProfessionExtension on Profession {
  String get text {
    switch (this) {
      case Profession.applicationEngineer:
        return 'アプリエンジニア';
      case Profession.webDirector:
        return 'WEBディレクター';
      case Profession.webDesigner:
        return 'WEBデザイナー';
      case Profession.webProgrammer:
        return 'WEBプログラマー';
      case Profession.pornStar:
        return 'AV男優・女優';
      case Profession.wiseMan:
        return '賢者';
      case Profession.wizard:
        return '魔法使い';
    }
  }
}
