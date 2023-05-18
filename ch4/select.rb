numbers = [1, 2, 3, 4, 5, 6]

# ブロックの戻り値が真になった要素だけが集められる

even_numbers = numbers.select { |n| n.even? }

puts even_numbers.to_s # [2, 4, 6]


# rejectメソッドはselectメソッドの反対で、
# ブロックの戻り値が真になった要素を除外した配列を返します。言い換えると、ブロックの戻り値が偽である要素を集めるメソッドです


#  3の倍数を除外する（3の倍数以外を集める）

non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three.to_s #=&gt; [1, 2, 4, 5]
