## 基本構文

```ruby
begin
# 例外が起きうる処理
rescue => # 例外オブジェクトを格納する変数
# 例外が発生した場合の処理
ensure
# 例外の有無に関わらず実行する処理(書かなくてもいい)必要に応じて
end
```

## rescue 節でエラーメッセージをカスタムできる

```ruby
rescue OOError, 〜〜〜〜〜エラー分

rescue OOError, 〜〜〜〜〜エラー分

```

こんな感じで複数かける。

```ruby
begin
   'abc'.foo
    1 / 0
 rescue ZeroDivisionError
   puts '0で除算しました'
 rescue NoMethodError
   puts '存在しないメソッドが呼び出されました'
end
```

## 注意点

NG 編

```ruby
begin
    # NoMethodErrorを発生させる
   'abc'.foo
  rescue NameError
    # NoMethodErrorはここで捕捉される
   puts 'NameErrorです'
  rescue NoMethodError
    # このrescue節は永遠に実行されない
   puts 'NoMethodErrorです'
 end
```

エラーのクラスについても気をつけること！

スーパークラス（親）よりもサブクラス(子)を手前に持ってくるようにする！

解決策

```ruby
begin
    # NoMethodErrorを発生させる
   'abc'.foo
  rescue NoMethodError
    # このrescue節は永遠に実行されない
   puts 'NoMethodErrorです'
  rescue NameError
    # NoMethodErrorはここで捕捉される
   puts 'NameErrorです'
 end
```

### raise メソッドを使ってわかりやすいエラー文章にできる

意図的に例外を発生させる事ができる！

## 例外処理のベストプラクティス

1. 安易に rescue はつかわない

プログラミング初心者の方は「例外が発生したら rescue で捕捉すればいいんだな」と考えるのではなく、

「例外が発生したら即座に異常終了させよう」もしくは「フレームワークの共通処理に全部丸投げしよう」と考えるほうが安全です。

2. rescue したら情報を残す

3. 例外処理の対象範囲と対象クラスを極力絞り込む

4. 例外処理よりもまずは条件分岐を使う

5. 予期しない条件は以上終了させる

6. 例外処理も手を抜かずにテストする

## まとめ

ここぞという時に使う連発は厳禁！！

最近の言語、Go や Rust は例外をもたないらしい
