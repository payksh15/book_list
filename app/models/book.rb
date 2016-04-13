class Book < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :genres

  before_save do
    self.genre.gsub!(/[\[\]\"]/, "") if attribute_present?("genre")
  end

  has_attached_file :image, styles: { medium: "120x120>", thumb: "70x70>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # validates :image, attachment_presence: true
end
