Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get'books/new'
  get'top' => 'books#top'
  get'books' => 'books#books'
  post'books' => 'books#create'

get 'books/:id' => 'books#show', as: 'book'
get 'books/:id/edit' => 'books#edit', as:'edit_book'

patch 'books/:id' => 'books#update', as: 'update_book'

end
