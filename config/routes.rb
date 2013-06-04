Blog::Application.routes.draw do



  resources :contacts
  match '/contact' => 'contacts#new', as: :contact
  match '/bloglist' => 'links#index', as: :bloglist
  
  match '/authors/:id' => 'users#show', as: :author
  match '/posts/:id' => 'posts#show', as: :posts
  resources :timelines
  resources :contacts
  resources :users
  resources :sessions
  namespace :admin do
  resources :posts
  end
  namespace :admin do 
    resources :categories
  end
  namespace :admin do 
    resources :links
  end
  namespace :admin do
    root :to => "dashboard#index"
  end
  match '/404' => "errors#not_found"
  match "/422" => "errors#not_found"
  match '/500' => "errors#not_found"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
     match '/login' => 'sessions#new'
     match '/about' => 'pages#about'
     match '/mission' => 'pages#mission', as: :mission
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index' 

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  
  get 'categories/:tag', to: 'home#tag', as: :tag
end
