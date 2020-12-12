Rails.application.routes.draw do
    scope "(:locale)", :default=>{:locale => "ru"}, :locale => /(ru|en)/ do
        resources :users
        resources :proposals
        
        get 'session/login'
        get 'session/acc'
        post 'session/create'
        get 'session/logout'
        get 'session/index'
        get 'session/contact'
        get 'session/aboutus'
        get 'session/rooms'
        
        root 'session#index'
    end
end
