class Book < ActiveRecord::Base
  belongs_to :user
  # has_many :book_to_genres
  # has_many :genres, through: :book_to_genres
  has_and_belongs_to_many :genres

  before_save do
    self.genre.gsub!(/[\[\]\"]/, "") if attribute_present?("genre")
  end

  # has_attached_file :avatar, styles: { medium: "120x120>", thumb: "70x70>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
