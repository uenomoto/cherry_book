# 範囲（1から5までとか）
# 1..5
# Rangeクラスのオブジェクト

puts (1..5).class # Range

range = 1..5 # 1以上5以下

puts range.include?(0) # false
puts range.include?(1) # true
puts range.include?(5) # true

range2 = 1...5 # 1以上5未満

puts range2.include?(5) # false

# 範囲オブジェクトは不等号(<>=)を使うよりシンプルに記述できる！

def liquid?(tempeerature)
  (0...100).include?(tempeerature)
end

puts liquid?(-1) # flase
puts liquid?(0) # true
puts liquid?(99) # true
puts liquid?(100) # flase

# case文を使って年齢に応じて料金を判定するメソッドも作れる！

def charge(age)
  case age
  when 0..5 then 0
  when 6..12 then 300
  when 13..18 then 600
  else
    1000
  end
end

puts charge(5) # 0
puts charge(12) # 300
puts charge(16) # 600
puts charge(28) # 1000

# to_aメソッドを使って楽々配列を作成できる！

arr_num = (1..20).to_a

puts arr_num.to_s # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

# 繰り返し処理もできる！

numbers = (1..10).to_a

puts numbers.sum # 55