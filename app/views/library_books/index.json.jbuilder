json.array!(@library_books) do |library_book|
  json.extract! library_book, :id, :name, :author, :description, :publisher, :isbn, :class, :status
  json.url library_book_url(library_book, format: :json)
end
