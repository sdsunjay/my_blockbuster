Rails.application.routes.draw do
  get 'producers/new'

  get 'producers/create'

  get 'producers/update'

  get 'producers/edit'

  get 'producers/destroy'

  get 'producers/index'

  get 'producers/show'

  get 'writers/new'

  get 'writers/create'

  get 'writers/update'

  get 'writers/edit'

  get 'writers/destroy'

  get 'writers/index'

  get 'writers/show'

  get 'actors/new'

  get 'actors/create'

  get 'actors/update'

  get 'actors/edit'

  get 'actors/destroy'

  get 'actors/index'

  get 'actors/show'

  get 'ratings/new'

  get 'ratings/create'

  get 'ratings/update'

  get 'ratings/edit'

  get 'ratings/destroy'

  get 'ratings/index'

  get 'ratings/show'

  get 'years/new'

  get 'years/create'

  get 'years/update'

  get 'years/edit'

  get 'years/destroy'

  get 'years/index'

  get 'years/show'

  get 'genres/new'

  get 'genres/create'

  get 'genres/update'

  get 'genres/edit'

  get 'genres/destroy'

  get 'genres/index'

  get 'genres/show'

  get 'studios/new'

  get 'studios/create'

  get 'studios/update'

  get 'studios/edit'

  get 'studios/destroy'

  get 'studios/index'

  get 'studios/show'

  get 'directors/new'

  get 'directors/create'

  get 'directors/update'

  get 'directors/edit'

  get 'directors/destroy'

  get 'directors/index'

  get 'directors/show'

  get 'genres/new'

  get 'genres/create'

  get 'genres/update'

  get 'genres/edit'

  get 'genres/destroy'

  get 'genres/index'

  get 'genres/show'

  get 'movies/new'

  get 'movies/create'

  get 'movies/update'

  get 'movies/edit'

  get 'movies/destroy'

  get 'movies/index'

  get 'movies/show'

  get 'about/index'

  get 'about' => 'about#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'movies#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
resources :movies
resources :genres
resources :directors
resources :producers
resources :writers
resources :studios
resources :years
resources :ratings
resources :actors

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
