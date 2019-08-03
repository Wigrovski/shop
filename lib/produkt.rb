class Produkt
  attr_reader :price, :amount

def initialize(params)
  @price = params[:price]
  @amount = params[:amount]
end
def to_s
  "#{@price} руб (осталось #{@amount})"

end
end
