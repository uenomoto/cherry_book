arr_s = ['ruby', 'java', 'python'].map { |s| s.upcase }

puts arr_s.to_s

puts '--------'

arr_upcase = ['ruby', 'java', 'python'].map(&:upcase)

puts arr_upcase.to_s # ["RUBY", "JAVA", "PYTHON"]

# このように＆：で書くこともできる！
# 条件は３つ
# 1. ブロックパラメータが1個だけである
# 2. ブロックの中で呼び出すメソッドには引数がない
# 3. ブロックの中では、ブロックパラメータに対してメソッドを1回呼び出す以外の処理がない。

# この場合は使えない、演算子を使っている、メソッドで引数を使っている、複数の文を使っている