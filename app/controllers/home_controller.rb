class HomeController < ApplicationController
  def index
    @books = Book.where('created_at >= ?', 1.week.ago)
  end
end
