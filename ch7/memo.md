### クラスメソッドとインスタンスメソッドの使い分け

まずはとりあえずインスタンスメソッドにしておく

そして、インスタンスの引数なしで New した直後に何かメソッドを呼び出しているときは

クラスメソッド候補かもしれない。

自分的まとめ

initialize メソッドでインスタンス変数と関係ない依存しないメソッドは、

クラスメソッドがいいかも！？