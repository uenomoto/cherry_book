## 日付や時刻の扱い

Time クラス 標準ライブラリ
Date クラス 組み込みライブラリ
DateTime クラス(非推奨クラス)

## ファイルやディレクトリの扱い

File クラス 組み込み
Dir クラス　組み込み
FileUtils モジュール　標準
Pathname クラス　標準

## 非推奨機能を使った時に警告を出力する！

なるべくつけたほうがいい！

プログラム内で`Warning[:deprecatde] = true`

これで非推奨機能を使うと警告が出力される

```ruby
warning: lambda without a literal block is deprecated; use the proc without lambda instead
```

## ruby や Gem はなるべく最新のものを！

## ツールを使ったコードレビューの自動化

Rails 向けのツールで`Brakeman`という gem を使うとコード解析してセキュリティ的に問題がありそうなコードを指摘してくれる。

RuboCop は必須

## Rake

Ruby で作られているビルドツール

## bundle init で Gemfire が作れる！
