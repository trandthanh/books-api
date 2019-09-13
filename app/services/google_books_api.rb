require 'open-uri'

class GoogleBooksApi

  def call(search)
    response = open("https://www.googleapis.com/books/v1/volumes?q=#{search}&langRestrict=en")
    json = JSON.parse(response.read)
  end

end


