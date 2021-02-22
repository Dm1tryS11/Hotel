Rails.application.routes.draw do
  scope "(:locale)", :default=>{:locale => "ru"}, :locale => /(ru|en)/ do
      resources :users
      resources :proposals
      resources :admins
      
      get 'session/login'
      get 'session/acc'
      post 'session/create'
      post 'session/createadmin'
      get 'session/logout'
      get 'session/index'
      get 'session/contact'
      get 'session/aboutus'
      get 'session/rooms'
      get 'session/loginadmin'
      get 'session/logoutadmin'
      get 'session/admin'
      
      root 'session#index'
  end
end
