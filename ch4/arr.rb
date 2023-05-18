# 配列のついてもっと詳しく！
a = [1,2,3,4,5]

puts a.values_at(0,2,4).to_s # 1,3,5

puts a.last # 5
puts a.first # 1
puts '-------------------'

# <<だけでなくpushメソッドでも要素は複数追加できる！

arr = []

puts arr.push(1,2,3).to_s # [1,2,3]

puts '-------------------'
# 元々配列同士を追加する場合

x = []
z = [2,3]
puts x.push(1).to_s # [1]
puts x.push(z).to_s # [1, [2, 3]]複数の配列になってしまいました

puts '-------------------'
# splat演算子を使えば回避できます。
c = []
v = [2,3]

puts c.push(1).to_s # [1]
puts c.push(*v).to_s # [1, 2, 3]この様に配列と配列を追加しても一つの配列で追加できます！

puts '-------------------'
# deleteメソッドで要素削除もできる

puts arr.delete(1) # 1
puts arr.to_s # [2,3]

array1 = [1]
array2 = [2,3,4,5,6,7]
puts '-------------------'
# ＋で連結すると非破壊的（変更されない）
adar = array1 + array2
puts adar.to_s # # [1,2,3,4,5,6,7]
puts '-------------------'
# concatメソッドで配列を連結できる！(ただし！破壊的なので注意)できれば避けて＋演算子を使う
add_arrya = array1.concat(array2)
puts add_arrya.to_s # [1,2,3,4,5,6,7]
puts '-------------------'
# 結合が上書きされているのが確認できる
adar = array1 + array2
puts adar.to_s # [1, 2, 3, 4, 5, 6, 7, 2, 3, 4, 5, 6, 7]

puts '-------------------'

# 便利な%w記法！文字列の配列を作れます。""や''がなくてもできる

string_arr = %w(文字列の 配列 です)

puts string_arr.to_s # ["文字列の", "配列", "です"]


puts '-------------------'

# 文字列を配列に変換する

puts 'Ruby'.chars.to_s # ["R", "u", "b", "y"]
