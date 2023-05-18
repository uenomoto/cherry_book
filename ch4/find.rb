# ブロックの戻り値が真になった最初の要素を返す。

numbers = [1, 2, 3, 4, 5, 6]

even_numbers = numbers.find { |n| n.even? }

puts even_numbers.to_s # 2
