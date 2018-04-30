Rails.application.routes.draw do
  get 'home/index'

  get 'home/new'

  post 'home/create'

  root 'home#index'

  get 'home/show/:post_id' => 'home#show' # post_id는 그 칸에 오는 값을 받기 위해서 기다리고있는 key이다.

  get 'home/destroy/:post_id' => 'home#destroy'

  get 'home/edit/:post_id' => 'home#edit'

  post 'home/update/:post_id' => 'home#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
