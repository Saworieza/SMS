require 'test_helper'

class LibraryBooksControllerTest < ActionController::TestCase
  setup do
    @library_book = library_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_book" do
    assert_difference('LibraryBook.count') do
      post :create, library_book: { author: @library_book.author, class: @library_book.class, description: @library_book.description, isbn: @library_book.isbn, name: @library_book.name, publisher: @library_book.publisher, status: @library_book.status }
    end

    assert_redirected_to library_book_path(assigns(:library_book))
  end

  test "should show library_book" do
    get :show, id: @library_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library_book
    assert_response :success
  end

  test "should update library_book" do
    patch :update, id: @library_book, library_book: { author: @library_book.author, class: @library_book.class, description: @library_book.description, isbn: @library_book.isbn, name: @library_book.name, publisher: @library_book.publisher, status: @library_book.status }
    assert_redirected_to library_book_path(assigns(:library_book))
  end

  test "should destroy library_book" do
    assert_difference('LibraryBook.count', -1) do
      delete :destroy, id: @library_book
    end

    assert_redirected_to library_books_path
  end
end
