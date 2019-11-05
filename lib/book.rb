class Book < Produkt

  attr_accessor :title, :genre, :author

  # Метод класса from_file считывает данные о книге из файла, путь к которому
    # ему передали в качестве параметра и передает их на вход своему же
    # конструктору с нужными ключами.
    def self.from_file(file_path)
      lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

      self.new(
        title: lines[0],
        genre: lines[1],
        author: lines[2],
        price: lines[3].to_i,
        amount: lines[4].to_i
      )
    end

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
