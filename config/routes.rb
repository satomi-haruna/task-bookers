Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'homes/top' => 'homes#top'
  #データを追加するためのルーティング 保存機能を追加する
  post 'books' => 'books#create'

  get 'books/new'

  get 'books' => 'books#index'

  get 'books/show'
  get 'books/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
