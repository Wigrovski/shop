class Movie < Produkt
  attr_accessor :title, :year, :dir

  def initialize(params)
  super
  @title = params[:title]
  @year = params[:year]
  @dir = params[:dir]

  end
  def to_s
  "Фильм «#{@title}», #{@year}, реж. #{@dir}, #{super}"

  end
  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @dir = params[:dir] if params[:dir]

  end
end
