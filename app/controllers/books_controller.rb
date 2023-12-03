class BooksController < ApplicationController
  
    def index 
        books = Book.all
        render json: books
    end 

    def create 
        book = Book.create(book_params)
        render json: book
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
        render json: {}
    end

    private 

    def book_params
        params.require(:book).permit(:title, :author, :genre, :years_published, :image_url)
    end
end
