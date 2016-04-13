module BooksHelper
  def checked(area)
    @book.genre.nil? ? false : @book.genre.match(area)
  end
end
