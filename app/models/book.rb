class Book < ApplicationRecord
  # データが存在するか否か確認して返す。trueでないとNGに
  validates :title,presence:true
  validates :body,presence:true
  end
