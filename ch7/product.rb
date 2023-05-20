class Product
  # デフォルトの価格を定数としてが0円
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end

end

product = Product.new('A free movie')

puts product.price # 0
puts Product::DEFAULT_PRICE # 0