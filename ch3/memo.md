## プログラマの三大美徳

- 怠惰「全体の労力を減らすために手間（つまりプログラムを書いたり、コードを改善したりすること）を惜しまない気質」

- 短気「コンピュータの動作が怠慢なとき（つまりプログラムの品質が悪いとき）に感じる怒り」

- 傲慢「自分の書いたプログラムは誰に見せても恥ずかしくないと胸を張って言える自尊心」

### minitest を使ったテストコードの基本形

```ruby
01 require 'minitest/autorun'
 02
 03 class SampleTest < Minitest::Test
 04   def test_sample
 05     assert_equal 'RUBY', 'ruby'.upcase
 06   end
 07 end
```
