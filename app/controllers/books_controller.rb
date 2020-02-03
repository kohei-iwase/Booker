class BooksController < ApplicationController
	def top
	end
	#booksページの定義、新規投稿機能と一覧機能
	def books
		#投稿機能
		@book = Book.new
		#一覧機能
		@books = Book.all
	end
	#新規投稿機能の定義
	def create
		#　ストロングパラメーターのため＠なし
		book = Book.new(book_params)
		#bookをDBへ保存
		book.save
		#リダイレクト先をとりあえずbooksへ
		redirect_to '/books'
	end
	#詳細ページの定義
	def show
		@book = Book.find(params[:id])
	end
	def edit
		@book = Book.find(params[:id])
	end
	def update
		book = Book.find(params[:id])
		book.update(book_params)
		redirect_to '/books'
	end

	#ストロングパラメーター
	private
	def book_params
		params.require(:book).permit(:title, :body)
	end
end
