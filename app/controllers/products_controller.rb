class ProductsController < ApplicationController

    def show
        @product = Product.find_by(product_name: titleized_param)

        #TODO: conditionally hide empty collections?
    end

    private

    


    # titleize param[:product_name] before defining @product to get eg.
    # Brown Rice Spaceman Backpack
    # instead of 
    # brown-rice-spaceman-backpack
    # as originally in params[:product_name]
    def titleized_param
        
        params[:product_name].titleize
    end

end


# original show:
# def show
#   @product = Product.find_by(product_name: params[:product_name])
# end

# Should turn params[:product_name] back to original 
# eg. "brown-rice-spaceman-backpack" -> "Brown Rice Spaceman Backpack"
