# ？や！で終わるメソッド

# 空文字列であればtrue、そうでなければfalse
puts "".empty? # true
puts "こんにちは".empty? #false

puts '-----------------------'

# 引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at') #=&gt; true
puts 'watch'.include?('in') #=&gt; false

puts '-----------------------'

# 奇数ならtrue、偶数ならfalse
puts 1.odd?  #=&gt; true
puts 2.odd?  #=&gt; false

puts '-----------------------'

# 偶数ならtrue、奇数ならfalse
puts 1.even? #=&gt; false
puts 2.even? #=&gt; true
