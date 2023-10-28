# lc_sample_project
- サンプルアプリのサンプル

# サンプルプロジェクトについて
- このプロジェクトのFlutterバージョンはFVMを利用しています。
    - FVMについてはこちら：https://zenn.dev/altiveinc/articles/flutter-version-management
    - プロジェクト内で扱うFlutterバージョンなどの管理がしやすいです。
    - FVMで管理しているFlutterバージョンを参照してください。
    - バージョン情報は /fvm/fvm_config.json 参照。
    - .gitignoreでflutter_sdkの管理を外しています。
- Provider、StateNotifier、StatefulWidgetあらゆるパターンで作成しているのであくまで参考程度に。
    - 基本的にバラバラのパターンで実装されることは無い。
    - 各クラスにdocやコメントでどういうことをしているか記載。
- 自動生成ファイルについてはGit管理しない場合が多いのでクローンしたら手元でファイルを自動生成すること(後述)


# FVMの導入
### Dartでインストール
```
dart pub global activate fvm

fvm --version // fvmバージョンが表示されていればOK
```

### Homebrewでインストール
```
brew tap leoafarias/fvm
brew install fvm
```

### PATHを通す
```
export PATH="$PATH:$HOME/.pub-cache/bin"
```
- 使用しているプロファイルに追加

### 使用するFlutterバージョンを指定
```
fvm use バージョン
```
- バージョンは/fvm/fvm_config.json 参照
- 対象バージョンをinstallしていなければinstallするか聞かれる

### AndroidStudioでflutter_sdkを指定
- Preferences > Language & Frameworks > Flutterでinstallしたsdkのパスを指定
- パスの例: `**/fvm/versions/参照するバージョン`

# PackageやPluginによるファイルの自動生成について
- 本サンプル内ではfreezedを使用してbuild_runnerによる自動生成を行います。
    - <a href=https://pub.dev/packages/freezed>freeaedについて</a>
    - <a href=https://pub.dev/packages/build_runner>build_runnerについて</a>
- terminalで以下コマンドを実行すればファイルが自動生成されます。
```
fvm flutter pub run build_runner build
// もしくは
fvm flutter pub run build_runner build --delete-conflicting-outputs
// コンフリクトがある場合は後者を使うと削除 > 再生成し直してくれる
```

