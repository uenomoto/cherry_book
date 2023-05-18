# 多重代入の便利な使い道



quo_rem = 14.divmod(3)

# puts quo_rem # 4, 2

# 戻り値を配列のまま受け取る

puts "商 = #{quo_rem[0]}, 余り = #{quo_rem[1]}"

# 多重代入で別々の変数として受け取る
quptient, remainder = 14.divmod(3)

puts "商 = #{quptient}, 余り = #{remainder}"