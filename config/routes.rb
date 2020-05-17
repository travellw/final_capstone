Rails.application.routes.draw do
  namespace :api do
    #ticket routes
    get "/tickets" => "tickets#index"
    post "/tickets" => "tickets#create"
    get "/tickets/:id" => "tickets#show"
    patch "/tickets/:id" => "tickets#update"
    delete "/tickets/:id" => "tickets#destroy"
    
    #user routes
    post "/users" => "users#create"
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    #attachment routes
    post "/attachments" => "attachments#create"
  end
end
