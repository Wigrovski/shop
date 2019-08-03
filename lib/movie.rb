class Movie < Produkt
  attr_reader :title, :year, :dir

def initialize(params)
  super
  @title = params[:title]
  @year = params[:year]
  @dir = params[:dir]

end
def to_s
  "Фильм «#{@title}», #{@year}, реж. #{@dir}, #{super}"

end
end
