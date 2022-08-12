class BooksController < ApplicationController
  #viewで見た目を作成=>コントローラへ処理を記述
  def new
    # Viewへ渡すインスタンス変数を定義
    @book = Book.new
  end

  def create
    # 新規登録するためのインスタンス変数
    book = Book.new(book_params)
    # DBに保存するsavaメソッド
    book.save
    # successメッセージとshow画面へリダイレクト？
    redirect_to '/books/show'
  end

  def index
    # すべてのデータを取得、ビューに表示するためインスタンス変数
    @books = Book.all
  end

  def show
  end

  def edit
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
