
def greet(country)
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'Hello!'
  end
end

puts greet(nil)
puts greet('us')
puts greet('japan')
