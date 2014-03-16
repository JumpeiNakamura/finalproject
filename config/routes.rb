Blog::Application.routes.draw do

  get "deals/edit"
  get "deal/edit"
  resources :locations
  resources :people
  get "googlemap/result"

#Amazon API
  get "/amazon/index" => "amazon#index"
  # get "amazon/show" => "amazon#show"

  get "/sessions/new" => "sessions#new"
  get "/sessions/create" => "sessions#create"
  get "/sessions/destroy" => "sessions#destroy"

#Users
  get "/users/new" => "users#new"
  get "/users/create" => "users#create"
  get "/users/show" => "users#show"
  get "/users/:user_id/edit" => "users#edit"
  get "/users/:user_id/update" => "users#update"

  #CREATE
  get "/deals/new" => "deals#new"
  get "/deals/create" => "deals#create"

  #READ
  get "/" =>"deals#index"
  get "/deals/index" =>"deals#index"
  get "/deals/" => "deals#category_list"
  get "/deals/:deal_id/show" => "deals#show"

  #UPDATE
  get "/deals/:deal_id/edit" => "deals#edit"
  get "/deals/:deal_id/update" => "deals#update"

  #DELETE
  get "/deals/:deal_id/delete" => "deals#delete"


  get "/about/index" => "about#index"

  get "/googlemaps/location" => "googlemaps#location"
  get "/googlemaps/result" => "googlemaps#result"

  get "/reviews/create" => "reviews#create"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'locations#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
