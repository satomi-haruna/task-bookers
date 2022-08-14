class Book < ApplicationRecord
  # データが存在するか否か確認して返す。trueでないとNGにする。
  validates :title,presence:true
  validates :body,presence:true
  end
