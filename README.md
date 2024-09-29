# flutter_test.

## 構成
1. 開発で直接使うプラットフォーム共通のもの(lib/test/pubspec.yamlなど)
    * `lib/`にソースコード
    * `test/`にテストコード
    * `pubspec.yaml`にパッケージ管理
2. 開発で直接使うプラットフォーム個別のもの(android/ios/webなど)
    * プラットフォームごとに異なる設定値やスマートフォンの機能(カメラなど)の利用権限を設定する場合など
3. 開発で間接的に使うもの(.gitignore/READMEなど)
4. 多分自動生成

```
flutter_application_test_counter
# 3
├── README.md

# 3 (Dartのコードを静的に解析するアナライザーを設定)
├── analysis_options.yaml

# 2
├── android

# 4
├── build
├── flutter_application_test_counter.iml

# 2
├── ios

# 1
├── lib
│   └── main.dart

# 2
├── linux

# 2
├── macos

# 4 (⚠️: コード管理必須)
├── pubspec.lock

# 1
├── pubspec.yaml

# 1
├── test
│   └── widget_test.dart

# 2
├── web

# 2
└── windows


414 directories, 645 files
```

## 使用方法
1. https://github.com/kannhi/flutter_test/issues/1#issuecomment-2381038001を参考に、依存ツールをセットアップ
2. 以下コマンドでエミュレータを起動
```
flutter run
```
