require_relative 'lib/produkt'
require_relative 'lib/book'
require_relative 'lib/movie'

products = []
products << Movie.new(
  title: 'Леон',
  year: '2013',
  dir: 'Люк Бессон',
  price: '990',
  amount: '23'
)
products << Movie.new(
  title: 'Дурак',
  year: '2015',
  dir: 'Юрий Быков',
  price: '1400',
  amount: '23'
)
products << Book.new(
  title: 'Идиот',
  gener: 'роман',
  author: 'Ф.М. Достоевский',
  price: '650',
  amount: '50'
)
movie = Movie.new(title: 'Терминатор 2', dir: 'Джеймс Кэмерон', price: '1000')
movie.year = 1991
movie.update(amount: 10)


puts 'Вот такие товары у нас есть: '
puts
products.each{|product| puts product}
puts
puts "Так же у нас в архиве имеется:"
puts movie
puts
