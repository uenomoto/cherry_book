# 正規表現

# プログラミング言語だけを抜き出す正規表現
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

s = text.scan(/[A-Z][A-Za-z]+/)
puts s.to_s #　["Ruby", "Python", "Java", "JavaScript"]

puts '----------------------------'

text = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056 兵庫県西脇市板波町1234だよ。
TEXT

puts text.gsub(/(\d{3})(\d{4})/) { "#{$1}-#{$2}" }
# 結果
# 私の郵便番号は123-4567です。
# 僕の住所は677-0056 兵庫県西脇市板波町1234だよ。