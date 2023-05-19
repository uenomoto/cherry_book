# 配列がなくて、単純に繰り返し処理をしたい場合、Integerクラスのtimesメソッドを使うと便利！

sum = 0
# 処理を５回繰り返す。nには0,1,2,3,4が入る。
5.times { |n| sum += n }

puts sum # 10
puts '--------------------'
sum = 0
# 単純に1を５回続けている
5.times { sum += 1 }
puts sum # 5

puts '--------------------'

# uptoメソッドとdowntoメソッド

# nからmまで数値を1つずつ増やしながら何か処理したい場合、uptoメソッドを使う

a = []

10.upto(14) { |n| a << n }

puts a.to_s # [10, 11, 12, 13, 14]

puts '--------------------'
# downtoメソッドは逆に減らしたい時に使う

a = []

14.downto(10) { |n| a << n }

puts a.to_s # [14, 13, 12, 11, 10]

# stepメソッドn個飛ばしして処理したい場合に使う

# 開始値.step(上限値, 一度に増減する大きさ)

a = []

1.step(10,2) { |n| a << n }

puts a.to_s # [1, 3, 5, 7, 9]

puts '--------------------'
# 10から1まで2ずつ減らす場合。

a = []

10.step(1, -2) { |n| a << n }

puts a.to_s # [10, 8, 6, 4, 2]

puts '--------------------'

# while文無限ループ注意

# 配列の要素数が5つになるまで値を追加するwhile文です。

a = []

while a.size < 5
  a << 1
end

puts a.to_s # [1, 1, 1, 1, 1]

puts '--------------------'

# loopメソッド、配列に格納した5つの数値の中からランダムに数値を選び5が出たタイミングで脱出するサンプルコード

numbers = [1, 2, 3, 4, 5]

loop do
  n = numbers.sample # sampleメソッドはランダムの要素を1つ取得してくれる
  puts n

  break if n == 5
end
# 結果は5が出るまで1~5の数字が出る、5が出たら脱出

puts '--------------------'

def factorial(n)
  # 再帰呼び出しを使わずに階乗を計算する例
  ret = 1
  (1..n).each { |n| ret *= n }
  ret
end
puts factorial(5) # 120
puts factorial(0) # 1

puts '--------------------'

# 範囲オブジェクトに対してmapメソッドを呼び出す
result = (1..10).map { |n| n * 10 } # [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

puts result.to_s

puts '--------------------'

# uptoメソッドの戻り値に対してselectメソッドを呼び出す。今回は[1,2,3,4,5]の配列からセレクトしてる

odd_num = 1.upto(5).select { |n| n.odd? }

puts odd_num.to_s # [1,3,5]

even_num = 1.upto(5).select { |n| n.even? }

puts even_num.to_s # [2,4]