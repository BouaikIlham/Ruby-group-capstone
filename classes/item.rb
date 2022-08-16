require 'date'

class Item
  attr_accessor :publish_date
  attr_reader :genre, :label, :author, :archived, :source

  def initialize(date)
    @id = Random.rand(1..1000)
    @publish_date = Date.strptime(date, '%d-%m-%Y')
    @archived = false
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end