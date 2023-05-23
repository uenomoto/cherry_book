# hashを使ってパターンマッチ配列との違いは順番は結果に影響しない

case {name: 'ueno'}
  in {name:, age:} then puts "私は#{name}です。歳は#{age}どすえ"
  in {name:} then puts "私は#{name}です。歳は秘密です"
end

puts '----------------------------'

case {name: 'ueno', age: 28}
  in {name:, age:} then puts "私は#{name}です。歳は#{age}どすえ"
  in {name:} then puts "私は#{name}です。歳は秘密です"
end

# 結果
# 私はuenoです。歳は秘密です
# ----------------------------
# 私はuenoです。歳は28どすえ

puts '-----------------------------'

case {name: 'ueno', age: 28, gender: :man}
  # キーがnameで値がuenoならマッチして残りのキー全部restに代入される
  in {name: 'ueno', **rest}
  puts "#{name}です。#{rest}です。"
end
# uenoです。{:age=>28, :gender=>:man}です。

# in節は実際の配列やハッシュではないあくまでパターンマッチ
# in節は条件分岐みたいな事ができる
