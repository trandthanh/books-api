class BooksController < ApplicationController
  def index
    search = "circle"
    google_books_api_service = GoogleBooksApi.new.call(search)

    @total_results = google_books_api_service["totalItems"]

    @mapped_results = google_books_api_service["items"].map do |item|
      title = item["volumeInfo"]["title"]
      author = item["volumeInfo"]["authors"]
      description = item["volumeInfo"]["description"]
      result = "#{title}, #{author}, #{description}"
    end



  end
end
