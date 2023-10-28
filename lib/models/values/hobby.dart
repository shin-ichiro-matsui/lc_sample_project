
/// 趣味.
enum Hobby {
  readingBooks,
  watchingMovies,
  listeningToMusic,
  camping,
  cooking,
  videoGames,
  gardening,
  strengthTraining,
  trip,
  fishing,
  walking,
}

extension HobbyExtension on Hobby {

  String get text {
    switch(this) {
      case Hobby.readingBooks:
        return '読書';
      case Hobby.watchingMovies:
        return '映画鑑賞';
      case Hobby.listeningToMusic:
        return '音楽を聴く';
      case Hobby.camping:
        return 'キャンプ';
      case Hobby.cooking:
        return '料理';
      case Hobby.videoGames:
        return 'ゲーム';
      case Hobby.gardening:
        return '園芸';
      case Hobby.strengthTraining:
        return '筋トレ';
      case Hobby.trip:
        return '旅行';
      case Hobby.fishing:
        return '釣り';
      case Hobby.walking:
        return '散歩';
    }
  }

}
