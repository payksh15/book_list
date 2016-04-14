require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "create @book" do
      book = Book.create(title: "Название", author: "Автор",
                         description: "описание", genre: nil,
                         blacks: "false", user_id: 3,
                         created_at: "2016-04-14 00:10:33",
                         updated_at: "2016-04-14 00:10:33",
                         image_file_name: nil, image_content_type: nil,
                         image_file_size: nil, image_updated_at: nil)

      get :index

      expect(assigns(:books)).to match_array([book])
    end
  end

end
