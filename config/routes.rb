Rails.application.routes.draw do
    root "pages#home"
    get '/new', to: 'users#new'
    post '/users', to: 'users#create'
end
