class ProductsController < ApplicationController
    include FindingMethods

    def show
        @product = Product.find_by(product_name: titleized_param_product)

        #TODO: conditionally hide empty collections?
    end

    private

    


    

end


# original show:
# def show
#   @product = Product.find_by(product_name: params[:product_name])
# end

# Should turn params[:product_name] back to original 
# eg. "brown-rice-spaceman-backpack" -> "Brown Rice Spaceman Backpack"
