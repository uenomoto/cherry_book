# %記法でシンボルやシンボルの配列を作成する

puts %s(ruby is fun)# ruby is fun

# こっちのが便利だと思う

puts %i(apple orange melon).to_s # [:apple, :orange, :melon]

puts '--------------------------'
# 条件分岐で変数に代入/&.演算子を同時に

def find_currency(country)
  currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
  currencies[country]
end

# 指定された国の通貨を大文字にして返す
def show_currency(country)
  currency = find_currency(country)

  # nilでないことをチェック(nilだとupcaseがよび出せない為)
  if currency
    currency.upcase
  end
end

puts show_currency(:japan) # "YEN"
puts show_currency(:brazil) # nil

puts '--------------------------'

a = 'foo'
puts a&.upcase # FOO

# nilであればエラーは出ずにnilで返す

a = nil
puts a&.upcase # nil

# この性質を利用してif文を省略できる

def show_currency(country)
  currency = find_currency(country)

  # &.はnilならnilを返すため
  currency&.upcase
end

puts show_currency(:us) # "DOLLAR"
puts show_currency(:kanada) # nil


# ユーザーがDBにいるかいないか

def user_exists?
  # データベースなどからユーザを探す（なければnil）
  user = find_user
  if user
    # userが見つかったのでtrue
    true
  else
    # userが見つからないのでfalse
    false
  end
end

# これが

def user_exists?
  !!find_user
end

# これだけでかける！
# !!はtrue又はfalseに変換する為だなと解釈する
