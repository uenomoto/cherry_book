# 繰り返し処理をしつつ、処理している要素の添字も取得したい

fruits = ['apple', 'orange', 'melon']

fruits.each_with_index { |fruit, i| puts "#{i}番目: #{fruit}"}

# 結果 
# 0番目: apple
# 1番目: orange
# 2番目: melon

puts '--------------------'
# with_indexメソッドはmap文でも使える
fruits = ['apple', 'orange', 'melon']

fruits.map.with_index { |fruit, i| puts "#{i}番目: #{fruit}"}

puts '--------------------'

fruits = ['apple', 'orange', 'melon']

# フルーツの名前がaを含むものと添字が奇数の物は削除。
filter_fruits = fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

puts filter_fruits
# 結果
# apple
# melon

puts '--------------------'

# インデックスの添字を0以外から始めたい場合

books = ['ruby', 'rails', 'javascrpt', 'react']

books.each.with_index(1) { |book, i| puts "#{i}: #{book}" }

# 結果
# 1: ruby
# 2: rails
# 3: javascrpt
# 4: react

puts '--------------------'
# map文の場合、10から始める

books.map.with_index(10) { |book, i| puts "#{i}番目の#{book}本" }

# 結果
# 10番目のruby本
# 11番目のrails本
# 12番目のjavascrpt本
# 13番目のreact本

puts '--------------------'

# たて * よこの面積結果を配列に入ってる物全部一気に計算！

dimensions = [
  # [たて, よこ]
  [10, 20],
  [30, 40],
  [50, 60],
]
# 面積結果を格納する配列
areas = []

dimensions.each do |length, width|
  areas << length * width
end
puts areas.to_s

puts '--------------------'

# 番号指定パラメータ
