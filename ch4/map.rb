numbers = [1, 2, 3, 4, 5]

# eachを使った場合
# new_number = []
# numbers.each{ |n| new_number << n * 10}
# puts new_number


# mapを使った場合（新しい配列を作ってる）

new_number = numbers.map { |n| n * 10 }

puts new_number.to_s # [10, 20, 30, 40, 50]
