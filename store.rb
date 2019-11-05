require_relative 'lib/produkt'
require_relative 'lib/book'
require_relative 'lib/movie'

# products = []
# products << Movie.new(
#   title: 'Леон',
#   year: '2013',
#   dir: 'Люк Бессон',
#   price: '990',
#   amount: '23'
# )
# products << Movie.new(
#   title: 'Дурак',
#   year: '2015',
#   dir: 'Юрий Быков',
#   price: '1400',
#   amount: '23'
# )
# products << Book.new(
#   title: 'Идиот',
#   gener: 'роман',
#   author: 'Ф.М. Достоевский',
#   price: '650',
#   amount: '50'
# )
# movie = Movie.new(title: 'Терминатор 2', dir: 'Джеймс Кэмерон', price: '1000')
# #movie.year = 1991
# movie.update(amount: 10)
current_path = File.dirname(__FILE__)
film = Movie.from_file(current_path + '/data/films/1.txt')
book = Book.from_file(current_path + '/data/books/1.txt')


puts 'Вот такие фильмы у нас есть: '
puts film
# products.each{|product| puts product}
puts "Так же у нас есть книги:"
# puts movie
puts book

# Пытаемся вызвать метод from_file у класса Product и ловим ошибку
begin
  Produkt.from_file(current_path + '/data/films/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
