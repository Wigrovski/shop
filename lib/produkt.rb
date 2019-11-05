class Produkt
  attr_accessor :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end
  def to_s
    "#{@price} руб (осталось #{@amount})"

  end
  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]

  end
  # Абстрактный метод from_file для продукта не имеет смысла, т.к. абстрактный
  # продукт из файла мы прочитать не сможем (мы не знаем, например, формат),
  # поэтому если он не определен у родителя, он будет возвращать ошибку. Класс
  # ошибки так и называется «ошибка отустствия имлементации».
  def self.from_file(file_path)
    raise NotImplementedError
  end
end
