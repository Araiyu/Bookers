Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'
  resources :books
  # post 'books' => 'books#create'
  # get 'books/:id' => 'books#show', as: 'book'
end