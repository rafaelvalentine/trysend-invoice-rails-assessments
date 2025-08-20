Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
       # resources :invoices
       get "/invoices", to: "invoices#index"
       get "/invoices/overdue", to: "invoices#overdue"
       get "/invoices/generate", to: "invoices#generate"
    end
  end
end
