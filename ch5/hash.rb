# ハッシュに追加する
currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rypee'}

# イタリアの通貨を追加
currencies['italy'] = 'euro'

puts currencies.to_s

puts '-------------------'

# ハッシュから値を取り出す

puts currencies['japan'] # yen

# 存在しないキーを指定するとnilが返る

puts '-------------------'

# ハッシュを使った繰り返し処理

currencies.each do |key, value|
  puts "#{key}: #{value}"
end
# 結果
# japan: yen
# us: dollar
# india: rypee
# italy: euro

puts '-------------------'

puts currencies.size # 4
puts currencies.length # 4

# シンボル
# シンボルはイミュータブルなので、破壊的な変更は不可能
puts '-------------------'

# ハッシュのキーにシンボルを使う
# ハッシュは文字列よりもシンボルの方が適している！

currencies = {japan: 'yen', us: 'doller', india: 'repee'}

# シンボルを使って値を取り出す
puts currencies[:us] # doller

puts '-------------------'

# メソッドのキーワード引数とハッシュ

def buy_burger(menu:, drink: true, potato:true) # drinkとpotatoはデフォルトとして買う。
  puts "#{menu}バーガー"
  puts drink ? 'ドリンク買った' : 'ドリンク買わない'
  puts potato ? 'ポテト買った' : 'ポテト買わない'
end

buy_burger(menu: 'テリヤキ')
# 結果
# テリヤキバーガー
# ドリンク買った
# ポテト買った
puts '-------------------'
buy_burger(menu: 'チーズ', drink: false, potato:false)
# 結果
# チーズバーガー
# ドリンク買わない
# ポテト買わない
puts '-------------------'
params = {drink: true, potato:false}
buy_burger(menu: 'チーズ', **params)
# 結果
# チーズバーガー
# ドリンク買った
# ポテト買わない
