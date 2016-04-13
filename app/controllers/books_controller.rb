class BooksController < ApplicationController
  before_action :authorize, only: [:new, :create]

  # GET /books/new
  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.create(book_params)
    redirect_to root_path
  end

  def index
    @books = Book.where(blacks: 'true')
    if params[:view] == 'add'
      Book.find_by(id: params[:id]).update_attribute(:blacks, "true")
    elsif params[:view] == 'dell'
      Book.find_by(id: params[:id]).update_attribute(:blacks, "false")
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Книга удалена"
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, genre_ids:[])
  end
end
