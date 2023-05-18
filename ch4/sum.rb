numbers = [1, 2, 3, 4]

puts numbers.sum # 10

# こいつは驚いた！！こんなメソッドあったんですね！

puts '-------------------'

add = numbers.inject(0) {|sum, n| sum += n }

puts add # 合計値10

# これが1行で記述できる！

puts '-------------------'

# ２倍にしながら合計もできる

multiplication = numbers.sum { |n| n * 2 }

puts multiplication # 20

puts '-------------------'

# 初期値に5を指定する(sum = 5みたいな感じ)

first_five = numbers.sum(5)

puts first_five # 15


# injectメソッドいらないですね、、、、

puts '-------------------'

# 文字列を連結することもできる！
chars = ['a', 'b', 'c']

puts chars.sum("") # abc

# だが、文字列結合はjoinの方がいい！

puts chars.join # abc
puts chars.join('-') #a-b-c

puts '-------------------'

# 先頭に＞をつけ各要素を大文字にして連結する

puts chars.sum('>') {|c| c.upcase } # >ABC
