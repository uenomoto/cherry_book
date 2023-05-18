# デフォルト値付き引数

def greet(country = 'japan')
  if country == 'japan'
    'こんにちは!'
  else
    'Hello!'
  end
end

puts greet
puts greet('us')


# デフォルト値は固定の値だけでなく、動的に変わる値や他のメソッドの戻り値を指定したりできる

def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'Bar!!!!!'
end

foo