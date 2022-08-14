Rails.application.routes.draw do
  root :to => 'homes#top'

  # get 'books/new'

  get 'top' => 'homes#top'
  #データを追加するためのルーティング 保存機能を追加する
  # post 'books' => 'books#create'
  # get 'books' => 'books#index',as:'index'
# 各項目から詳細画面へのルーティング
  # get 'books/:id' => 'books#show',as:'show'
  # get 'books/:id/edit' => 'books#edit',as:'edit'
  # patch 'books/:id' => 'books#update', as:'update_book'
  # delete 'books/:id' => 'books#destroy',as:'destroy_book'

  #上記で名前付きルーティングなども作ったが、簡単ルーティングに記述を変更。
  #手動で作成したルーティングはコメントアウトに。
  #ルーティングの記述が短縮できる、ルーティングの自動生成機能
  resources:books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
