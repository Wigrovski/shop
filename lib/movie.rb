class Movie < Produkt
  attr_accessor :title, :year, :dir

  # Метод класса from_file считывает данные о фильме из файла, путь к которому
    # ему передали в качестве параметра и передает их на вход своему же
    # конструктору с нужными ключами.

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding:'UTF-8').map{|l| l.chomp}
    self.new(
      title: lines[0],
      dir: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

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
