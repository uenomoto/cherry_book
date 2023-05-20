# ia-aの関係で成り立つ

# インスタンスメソッドからクラスメソッドを呼び出すコード

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # 金額を整形するクラスメソッド

  def to_s
    "name: #{name}, price: #{price}円"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    
    "#{super}, 動画時間： #{running_time}分"
    # name: #{name}, price: #{price}円, 動画時間： #{running_time}分
  end
end

product = Product.new('A free movie', 1000)
puts product.to_s

dvd = DVD.new('dvdだよ', 10000, 300)
puts dvd.to_s
