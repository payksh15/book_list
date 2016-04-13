class Genre < ActiveRecord::Base
  # has_many :book_to_genres
  # has_many :books, through: :book_to_genres

  has_and_belongs_to_many :books,  dependent: :destroy
end
