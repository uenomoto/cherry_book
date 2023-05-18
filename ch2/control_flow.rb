# 制御フロー（falseやnilだったらこうしろと命令できる）

def greet(country)
  country or return 'countryを入力してください'

  if country == '日本'
    'こんにちは、さようなら'
  else
    'Hello, bye'
  end
end

puts greet('日本')
puts greet('アメリカ')
puts greet(nil)
