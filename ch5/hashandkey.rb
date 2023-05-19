# ハッシュとキーワード引数についてもっと詳しく

# ハッシュで使用頻度の高いメソッド！

# keysメソッド
cuttencies = {japan: 'yen', us: 'dollar', india: 'rupee'}

keys = cuttencies.keys
puts keys.to_s # [:japan, :us, :india]
# valuesメソッド
puts '----------------------'
values = cuttencies.values
puts values.to_s # ["yen", "dollar", "rupee"]
puts '----------------------'
# has_key?メソッド（キーがあるかないかを確認する）include?とほぼ同じ

puts cuttencies.has_key?(:japan) # ture
puts cuttencies.has_key?(:italy) # false

puts '----------------------'
# **でハッシュを展開させる(プッシュする)

h = {us: 'dollar', undia: 'rupee'}

# ハッシュをターミナルに出力したい場合()で囲ってあげる
puts ({japan: 'yen', **h}) # {:japan=>"yen", :us=>"dollar", :undia=>"rupee"}

# mergeメソッドと同じ！
# {japan: 'yen', **h} = {japan: 'yen'}.merge(h)

