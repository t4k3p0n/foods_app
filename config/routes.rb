Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  devise_for :users,:controllers => {
                    :registrations => 'users/registrations',
                    :sessions => 'users/sessions'}


  #get 'users/show'
  resources :users, only: [:show]
  resources :microposts, only: [:new, :create, :destroy]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #deviseコントローラーによる追加
  #devise_for :users, controllers: {
        #sessions: 'users/sessions',
  # ログイン、アカウント編集後、任意のページに推移させるための記述
        #registrations: 'users/registrations'
      #}

end
