def greet(country)
  case country
    in 'japan' then 'こんにちは'
    in 'us' then 'Hello'
    in 'italy' then 'Ciao'
    in obj
    # NoMatchingPatternErrorじゃなくしたい場合は
    "#{obj}はないよ"
  end
end

puts greet('japan')
puts greet('india')
