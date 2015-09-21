class LibraryBooksController < ApplicationController
  before_action :set_library_book, only: [:show, :edit, :update, :destroy]

  # GET /library_books
  # GET /library_books.json
  def index
    @library_books = LibraryBook.all
  end

  # GET /library_books/1
  # GET /library_books/1.json
  def show
  end

  # GET /library_books/new
  def new
    @library_book = LibraryBook.new
  end

  # GET /library_books/1/edit
  def edit
  end

  # POST /library_books
  # POST /library_books.json
  def create
    @library_book = LibraryBook.new(library_book_params)

    respond_to do |format|
      if @library_book.save
        format.html { redirect_to @library_book, notice: 'Library book was successfully created.' }
        format.json { render :show, status: :created, location: @library_book }
      else
        format.html { render :new }
        format.json { render json: @library_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_books/1
  # PATCH/PUT /library_books/1.json
  def update
    respond_to do |format|
      if @library_book.update(library_book_params)
        format.html { redirect_to @library_book, notice: 'Library book was successfully updated.' }
        format.json { render :show, status: :ok, location: @library_book }
      else
        format.html { render :edit }
        format.json { render json: @library_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_books/1
  # DELETE /library_books/1.json
  def destroy
    @library_book.destroy
    respond_to do |format|
      format.html { redirect_to library_books_url, notice: 'Library book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library_book
      @library_book = LibraryBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_book_params
      params.require(:library_book).permit(:name, :author, :description, :publisher, :isbn, :class, :status)
    end
end
