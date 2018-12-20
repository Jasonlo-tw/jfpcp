Rails.application.routes.draw do

  # FIXME:   the routes here are all replaced with "resources", should be replaced to correct ones when the planning is done.

  # as the landing page only renders the predefined partials, simply give its controller a dummy #home action and thus the view, not even #index, #show...etc.
  root 'pages#home' 
  

  # TODO: enable devise_for
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  # Collections
  # the desired path
  # /collections/:name
  resources :collections, param: :name, only: [:index, :show] do
    resources :products, param: :name, only: [:show]
  #FIXME: separate collection_name and product_name in schema as they both need to take in params
  end
    
      # get '/backpack'
      # get '/shoulder_bag'
      # get '/handbag'
      # get '/purse'
      # get '/gift_under_100'
      
    #end
    # get '/influencer_collection'
    # get '/graffiti_collection'
    
  

  # Account utility
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
  resources :cart
  
  

# Admin functionality
  # resources :admin

end
