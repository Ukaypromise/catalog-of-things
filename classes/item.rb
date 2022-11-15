require 'date'

class Item
  attr_accessor :genre, :author, :source, :label
  attr_reader :publish_date, :archived

  def initialize(publish_date)
    @id = rand(1..1000)
    @publish_date = Date.parse(publish_date)
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_label(label)
    @label = label
  end

  private

  def can_be_archived?
    # Time.now.year - @publish_date.year > 10
    Date.today - Date.parse(@publish_date) > 3650
  end
end