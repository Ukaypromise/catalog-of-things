require_relative 'classes/item'
require_relative 'classes/book'
require_relative 'classes/label'
require_relative 'classes/game'
require_relative 'classes/author'
require_relative 'classes/music'
require_relative 'classes/genre'
require_relative 'classes/movie'
require_relative 'classes/source'
require_relative 'validation'
require_relative 'handler/handle_label'
require_relative 'handler/handle_genre'
require_relative 'handler/handle_author'
require_relative 'handler/handle_source'

require 'json'
class App
  include Validation
  include HandleLabel
  include HandleGenre
  include HandleAuthor
  include HandleSource

  def initialize
    @response = 0
    @books = []
    @games = []
    @music_albums = []
    @movies = []
    @authors = []
    @labels = []
    @genres = []
    @sources = []

    load_labels
    load_author
    load_genres
    load_sources
  end

  def menu_options
    puts 'WELCOME TO MY CATALOG OF THINGS!'
    while @response != 13
      puts(
        'Please choose an option by entering a number:
        1 - List all books
        2 - List all music albums
        3 - List of games
        4 - List all movies
        5 - List all labels
        6 - List all genres
        7 - List all authors
        8 - List all sources
        9 - Add a book
        10 - Add a music album
        11 - Add a game
        12 - Add a movie
        13 - Exit'
      )
      start_app
    end
  end

  def start_app
    @response = gets.chomp.to_i
    case @response
    when 1
      list_books
    when 2
      list_music_albums
    when 3
      list_games
    when 4
      list_movies
    when 5
      list_labels
    when 6
      list_genres
    when 7
      list_authors
    when 8
      list_sources
    when 9
      add_book
    when 10
      add_music_album
    when 11
      add_game
    when 12
      add_movie
    end
  end
end
