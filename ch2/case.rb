# １つのオブジェクトや式を複数の値と比較する場合はcase文がシンプルでいい！

def greet(country)
  case country
  when '日本' then 'こんにちは' 
  when 'アメリカ' then 'Hello'
  when 'イタリア' then 'Ciao'
  else
    '記憶にございません'
  end
end

puts greet('日本')
puts greet('アメリカ')
puts greet('イタリア')
puts greet('ポルトガル')