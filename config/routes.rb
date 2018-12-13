Rails.application.routes.draw do
  

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # FIXME:   the routes here are all replaced with "resources", should be replaced to correct ones when the planning is done.

  
  root 'pages#home' # use vue for search functionality on layout

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

  # Account utility
  # resources :account do
  #   get :login
  #   get :register
  # end

  # Collections
  resources :collections do
    resources :all_products # do 
      # get '/backpack'
      # get '/shoulder_bag'
      # get '/handbag'
      # get '/purse'
      # get '/gift_under_100'
      
    #end
    # get '/influencer_collection'
    # get '/graffiti_collection'
    
  end

  

  # Blog pages, essentially static (or generated with editor?)
  # TODO: blog editor?
  # resources :blogs do
  #   get :lookbook
  #   get :news
  # end

  # Checkout process
  # resources :cart do
  #   get :checkout
  # end

# Admin functionality
  # resources :admin

end
