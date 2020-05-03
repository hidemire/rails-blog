class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    self.price = price;
  end

  def self.total_amount
    "123"
  end
end

Product.total_amount