Rails.application.routes.draw do


  # as the landing page only renders the predefined partials, simply give its controller a dummy #home action and thus the view, not even #index, #show...etc.
  root 'pages#home' 
  

  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  # Collections, #index, #show
  # the desired path: /collections/:name
  resources :collections, param: :collection_name, only: [:index, :show]
 
  
  # Products 
  #show certain product only
  get 'collections/:collection_name/products/:product_name', to: 'products#show'

  
    
      # get '/backpack'
      # get '/shoulder_bag'
      # get '/handbag'
      # get '/purse'
      # get '/gift_under_100'
      
    
      # get '/influencer_collection'
      # get '/graffiti_collection'
    
  # Line_items
  resources :line_items, only: [:create, :update, :destroy]
  

  # Account utility, or just use devise?
  # resources :account do
  #   get :login
  #   get :register
  # end  

  # Static pages
  # resources :pages do
  #   get :about_us
  #   get :graffiti_world
  #   get :faqs # use Vue here
  #   get :delivery_region
  #   get :contact_us
  #   get :return
  #   get :privacy_policy
  #   get :terms_of_use
  #   get :dealer_list
  # end

  # Blog pages, essentially static (or generated with editor?)
  # TODO: blog editor?
  # resources :blogs do
  #   get :lookbook
  #   get :news
  # end

  # Checkout process
  get 'carts', to: 'carts#index'
  post 'carts', to: 'line_items#update_quantity'

  resources :contact_infos

  resources :orders do
    member do
      post :paypal
    end
  end

  get "/orders/order_complete.html.erb", to: 'orders#order_complete'
  get "order_check", to: 'orders#order_check'

  put 'orders/', to: 'orders#update'

  
  

  
  
  

# TODO: Admin functionality
  # resources :admin

end
