class Api::V2::BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.create(
      title: params[:title],
      author: params[:author],
      publisher: params[:publisher],
      genre: params[:genre],
      year: params[:year]
      )
    render :show
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(
      title: params[:title],
      author: params[:author],
      publisher: params[:publisher],
      genre: params[:genre],
      year: params[:year]
      )
    render :show
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    
    @books = Book.all
    render :index
  end
end
