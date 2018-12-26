class PagesController < ApplicationController
  include CurrentCart

  before_action :set_cart
  
  def home
        
  end
end
