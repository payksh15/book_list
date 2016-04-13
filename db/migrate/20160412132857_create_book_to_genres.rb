class CreateBookToGenres < ActiveRecord::Migration
  def change
      create_join_table :books, :genres do |t|
    end
  end
end
