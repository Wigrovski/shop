class Book < Produkt

  attr_accessor :title, :genre, :author

  def initialize(params)
    super
    @title = params[:title]
    @gener = params[:genre]
    @author = params[:author]

  end
  def to_s
    "Книга «#{@title}», #{@gener}, автор — #{@author}, #{super}"

  end
  def update(params)
    super
    @title = params[:title] if params[:title]
    @gener = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end
end
