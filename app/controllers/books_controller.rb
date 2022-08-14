class BooksController < ApplicationController
  #viewで見た目を作成=>コントローラへ処理を記述
  def new
    # Viewへ渡すインスタンス変数を定義
    # indexにまとめるのでnewの分はindexへ記述し、こちらはコメントアウトに。
    # @book = Book.new
    # @books = Book.all
  end

  def index
    # Viewへ渡すインスタンス変数を定義
    @book = Book.new
    # すべてのデータを取得、ビューに表示するためインスタンス変数
    @books = Book.all
  end

  def create
    # 新規登録するためのインスタンス変数
    @book = Book.new(book_params)
    # DBに保存するsavaメソッド
    # 必須項目がないと新規投稿ページを再表示するようにif式で設定
    if @book.save
    # successメッセージと詳細show画面へリダイレクト
      redirect_to book_path(@book.id),notice:'Book was successfully created.'
    else
      @books = Book.all
      # redirect_to books_path indexアクションを通って、変数が上書きされて、エラーがなかったことになってしまうから、renderを使用する
      render :index #render:アクション名
    end
  end

  def show
    # 各項目のデータが呼び出されるようにするためidの取得
    @book = Book.find(params[:id])
  end

  def edit
    # 編集の為に1つのデータを取り出す
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book.id),notice:'Book was successfully updated.'
    # updateが失敗したとき、エラーを返さないといけない
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id]) #データを１件取得
    book.destroy
    redirect_to books_path,notice:'Book was successfully destroyed.'
    # destroy後のsuccessメッセージの表示が必要
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title,:body)
  end
end
