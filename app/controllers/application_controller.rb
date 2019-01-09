class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Prepare a cart for guest immediately as he lands on the site, so we don't need to call for a cart in every controller
  include CurrentCart
    before_action :set_cart

  

  

end
