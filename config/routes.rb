Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  #ログイン機能
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy' # ルートがdeleteだとエラーになり、getに変更促された。
  
  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
  end
end