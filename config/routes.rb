Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'books/new'
  get'top' => 'books#top'
  get'books' => 'books#books'
  post'books' => 'books#create'


end
