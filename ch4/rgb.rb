#　RGB変換プログラムを作成する
# to_hex(0, 0, 0)       # "#000000"
# to_hex(255, 255, 255) # "#ffffff"
# to_hex(4, 60, 120)    # "#043c78"

# def to_hex(r, g, b)
#   '#' +
#   r.to_s(16).rjust(2, '0') +
#   g.to_s(16).rjust(2, '0') +
#   b.to_s(16).rjust(2, '0')
# end

# リファクタリング
# def to_hex(r, g, b)
#     hex = '#'
#     [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

# sumメソッドを使いもっとリファクタリング！
def to_hex(r, g, b)
    [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end
puts to_hex(0,0,0)
puts to_hex(255,255,255)
puts to_hex(4,60,120)

puts '---------------------'
# to_intsメソッド作成

# to_ints('#000000')    # [0, 0, 0]
# to_ints('#ffffff')    # [255, 255, 255]
# to_ints('#043c78')    # [4, 60, 120]

# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#     s.hex
#   end
# end

# 上級者向けリファクタリング

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end

puts to_ints('#000000')
puts to_ints('#ffffff')
puts to_ints('#043c78')
