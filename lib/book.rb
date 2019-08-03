class Book < Produkt

  attr_reader :title, :gener, :author

  def initialize(params)
    super
    @title = params[:title]
    @gener = params[:gener]
    @author = params[:author]

  end
  def to_s
    "Книга «#{@title}», #{@gener}, автор — #{@author}, #{super}"

  end
end
